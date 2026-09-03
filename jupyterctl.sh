#!/usr/bin/env bash
# Control del servidor JupyterLab para desarrollo local.
# Uso: ./jupyterctl.sh {start|stop|status|restart}
#
# Acceso directo sin contraseña (token desactivado) para uso local.
# El puerto se reenvía a localhost:8888 mediante el devcontainer.

set -euo pipefail

PORT="${JUPYTER_PORT:-8888}"
BIND_IP="0.0.0.0"
LOG_FILE="${JUPYTER_LOG:-$HOME/.jupyterctl.log}"

is_running() {
    curl -s -o /dev/null --max-time 2 "http://localhost:${PORT}" && return 0 || return 1
}

start() {
    if is_running; then
        echo "JupyterLab ya está corriendo en http://localhost:${PORT}"
        return 0
    fi
    echo "Arrancando JupyterLab en http://localhost:${PORT} (sin contraseña) ..."
    nohup jupyter lab \
        --ip="${BIND_IP}" \
        --port="${PORT}" \
        --no-browser \
        --ServerApp.token='' \
        --ServerApp.password='' \
        --ServerApp.disable_check_xsrf=True \
        >"${LOG_FILE}" 2>&1 &
    disown
    # Esperar a que responda
    for _ in $(seq 1 20); do
        if is_running; then
            echo "JupyterLab listo: http://localhost:${PORT}"
            return 0
        fi
        sleep 1
    done
    echo "No se pudo confirmar el arranque. Revisa: ${LOG_FILE}" >&2
    return 1
}

stop() {
    if ! is_running; then
        echo "JupyterLab no está corriendo."
        return 0
    fi
    echo "Deteniendo JupyterLab ..."
    pkill -f "jupyter-lab --ip=${BIND_IP} --port=${PORT}" || \
        pkill -f "jupyter lab --ip=${BIND_IP} --port=${PORT}" || true
    sleep 2
    if is_running; then
        echo "Advertencia: el servidor sigue respondiendo." >&2
        return 1
    fi
    echo "JupyterLab detenido."
}

status() {
    if is_running; then
        echo "JupyterLab: ACTIVO en http://localhost:${PORT}"
    else
        echo "JupyterLab: DETENIDO"
    fi
}

case "${1:-}" in
    start)   start ;;
    stop)    stop ;;
    restart) stop; start ;;
    status)  status ;;
    *)
        echo "Uso: $0 {start|stop|status|restart}" >&2
        exit 1
        ;;
esac
