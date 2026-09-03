FROM jupyter/datascience-notebook:latest

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/jovyan/.cache/pip \
    && chown -R jovyan:users /home/jovyan/.cache

USER jovyan

COPY requirements.txt /home/jovyan/requirements.txt

RUN pip install --no-cache-dir -r /home/jovyan/requirements.txt \
    && rm /home/jovyan/requirements.txt
