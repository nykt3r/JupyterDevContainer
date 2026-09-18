# PROYECTO DE AULA – ENTREGA 1

Modelos y Simulación

Formulación del problema y arquitectura inicial del modelo de simulación

**Curso**	Modelos y Simulación

**Tipo de trabajo**	Proyecto de aula – primera entrega

**Extensión**	4 a 6 páginas, sin contar anexos

## 1. Propósito de la primera entrega

La primera entrega establece la base conceptual del proyecto. El equipo debe formular con precisión el problema que desea estudiar, identificar la decisión que la simulación ayudará a informar, delimitar la frontera del sistema y definir la arquitectura inicial del modelo. En esta etapa se evalúa principalmente la calidad de la formulación y la coherencia entre problema, sistema, datos y métricas; no la complejidad del código.

## 2. Producto esperado

Se debe entregar un informe técnico de **4 a 6 páginas**, sin contar anexos, escrito con claridad y sustentado en referencias pertinentes. El informe debe ser autosuficiente: una persona que no conozca el proyecto debería poder entender qué sistema se modelará, cuál es su alcance, qué información alimentará el modelo y qué resultados se esperan obtener.

### 2.1. Evidencias mínimas que deben aparecer

* Una definición clara del problema y de la decisión que se desea apoyar.

* Una pregunta principal de simulación y, cuando sea pertinente, 2 a 4 preguntas de tipo “¿qué pasaría si...?”.

* La frontera del sistema: qué elementos quedan dentro del modelo y cuáles se excluyen deliberadamente.

* La clasificación técnica del sistema, con justificación breve para cada categoría.

* Un diagrama o esquema conceptual que muestre los componentes principales y sus relaciones.

* La arquitectura inicial del modelo: entradas, salidas, parámetros y variables de estado.

* Los indicadores de desempeño (KPIs) con definición, unidad y sentido de interpretación.

* Las fuentes de datos disponibles o el plan de recolección, incluyendo una valoración preliminar de su calidad.

* Los supuestos y simplificaciones iniciales del modelo.

* Al menos **5 referencias clave**, citadas en el texto y presentadas según normas APA.

### 2.2. Qué NO se exige todavía

La Entrega 1 **no requiere** un modelo computacional terminado, resultados de experimentos de simulación, análisis de sensibilidad ni conclusiones definitivas sobre el sistema. Es válido incluir prototipos, pseudocódigo o exploraciones de datos si ayudan a demostrar factibilidad, pero no sustituyen la formulación conceptual requerida.

## 3. Estructura detallada del informe

Se recomienda seguir el orden que aparece a continuación. Los subtítulos pueden ajustarse al proyecto, siempre que se conserve el contenido mínimo solicitado.

### 3.1. Resumen (150–200 palabras)

Debe sintetizar el proyecto en un solo bloque breve. Se recomienda incluir, en este orden: contexto del sistema, problema a estudiar, decisión a informar, enfoque de simulación previsto, principales fuentes de datos y métricas de desempeño. Evite resultados que aún no existen y afirmaciones generales que no permitan entender el proyecto.

### 3.2. Introducción

La introducción debe conectar el contexto real con una necesidad concreta de modelado. No debe limitarse a describir un sector o una organización; debe justificar por qué el problema requiere simulación y qué conocimiento adicional se espera obtener mediante ella.

Debe incluir:

* Contexto y relevancia del fenómeno o proceso.

* Problema central expresado de forma concreta y medible.

* Decisión, política o pregunta estratégica que se desea respaldar.

* Pregunta principal de simulación y escenarios preliminares de interés.

* Revisión breve de trabajos relacionados con mínimo 5 referencias clave. Se espera que las referencias ayuden a justificar el problema, el enfoque de modelado, los datos o las métricas; no deben aparecer como una lista aislada.

**Pregunta guía.** Si el modelo ya estuviera construido y validado, ¿qué decisión concreta podría
tomar una persona u organización a partir de sus resultados?

**Ejemplo de formulación adecuada.** “Evaluar si aumentar de 2 a 3 servidores en la franja
de mayor demanda reduce el percentil 90 del tiempo de espera por debajo de 20 minutos sin
disminuir la utilización promedio del recurso por debajo del 60 %.”

### 3.3. Análisis del sistema

Esta es la sección central de la primera entrega. Debe mostrar que el equipo comprende cómo funciona el sistema real y cómo lo abstraerá para construir el modelo.

#### 3.3.1. Frontera del sistema

Defina explícitamente el punto de inicio y de finalización del sistema modelado, las unidades o procesos incluidos y las exclusiones. Toda exclusión importante debe justificarse por su relación con la pregunta de simulación. Un modelo útil no intenta representar todo el sistema real; representa aquello necesario para responder la decisión planteada.

#### 3.3.2. Diagrama conceptual

Incluya un diagrama de flujo, mapa de procesos o esquema equivalente. El diagrama debe mostrar las relaciones entre los componentes principales y ser consistente con el texto. Si el enfoque es **Simulación de Eventos Discretos (DES)**, es recomendable identificar entidades, generadores, colas, actividades, recursos, rutas alternativas y sumideros. Para otros paradigmas de simulación, utilice los componentes conceptuales equivalentes.

#### 3.3.3. Clasificación técnica del sistema

Clasifique el sistema en cada uno de los siguientes ejes y justifique brevemente cada decisión con base en el comportamiento del sistema real, no solo con definiciones de libro.

| Eje de clasificación | Opciones | Qué debe justificar el equipo |
| --- | --- | --- |
| Comportamiento temporal | Estático / Dinámico | Si el estado del sistema cambia o no a lo largo del tiempo. |
| Incertidumbre | Determinista / Esto-cástico | Si existen fuentes relevantes de variabilidad o aleatoriedad. |
| Representación del cambio | Continuo / Discreto / Híbrido | Cómo cambian las variables del sistema y qué eventos o ecuaciones gobiernan esos cambios. |
| Interacción con el entorno | Abierto / Cerrado | Si entran o salen entidades, información, materiales o recur-sos durante la operación. |

#### 3.3.4. Arquitectura inicial del modelo

Describa los cuatro grupos de elementos siguientes y evite confundirlos entre sí. Cada elemento debe tener nombre, significado, unidad o escala cuando aplique y relación con el problema.

### 3.4 Métricas de desempeño (KPIs)

Los KPIs deben permitir comparar escenarios de manera objetiva y deben estar directamente relacionados con la decisión planteada. Evite escoger métricas solo porque son fáciles de calcular. Para cada KPI indique:

| Componente | Definición operativa | Ejemplos genéricos |
| --- | --- | --- |
| Entradas | Variables exógenas que alimentan el mo-delo y pueden cambiar entre escenarios o en el tiempo. | Demanda, llegadas, condiciones externas, datos de operación. |
| Parámetros | Valores que configuran el modelo y se mantienen fijos durante una corrida, salvo que sean objeto de un escenario. | Capacidad, número de recursos, tasas, umbrales, probabilidades. |
| Variables de estado | Información mínima necesaria para describir la condición del sistema en un instante. | Número en cola, recursos ocupados, inventario, estado de una entidad. |
| Salidas | Resultados calculados por el modelo para evaluar escenarios y apoyar decisiones. | Tiempos, costos, utilización, nivel de servicio, *throughput*. |

* definición;

* fórmula o criterio de cálculo;

* unidad;

* población o periodo sobre el que se calcula;

* dirección deseada: mayor es mejor, menor es mejor o rango objetivo.

**Recomendación.** Defina entre 3 y 6 KPIs principales. Si el sistema es estocástico, piense desde
ahora en medidas que puedan resumirse con medias, medianas, percentiles, probabilidades de
excedencia o intervalos de confianza en entregas posteriores.

### 3.5. Modelado y gestión de datos

Identifique qué datos son necesarios para parametrizar o validar el modelo y cuál es su disponibilidad real. Si aún no existen datos suficientes, describa un protocolo viable para obtenerlos. No es necesario ajustar distribuciones definitivas en esta etapa, pero sí demostrar que el equipo conoce qué información necesitará.

Como mínimo, discuta: procedencia de los datos, periodo de observación, unidades, volumen disponible, datos faltantes, posibles sesgos, consistencia, necesidad de limpieza y limitaciones de acceso. Si se usarán datos sintéticos o valores de literatura, debe explicarse la razón.

#### **Ejemplo de tabla para organizar la información:**

| Variable / dato | Fuente | Unidad | Cobertura | Calidad / riesgo |
| :---- | :---- | ----- | :---- | :---- |
| Tiempo entre llegadas | Registro transaccional | min | 6 meses | Faltantes en 4 % |
| Duración de servicio |  Cronometraje / sistema |  min |  Muestra inicial |  Sesgo por turnos |

### 3.6. Supuestos y simplificaciones

Todo modelo contiene supuestos. En lugar de ocultarlos, el equipo debe hacerlos explícitos y justificar por qué son razonables para la pregunta del proyecto. Se recomienda presentar entre **4 y 8 supuestos iniciales** en una tabla.

| Supuesto | Justificación | Riesgo si no se cumple | Cómo se revisará después |
| --- | --- | --- | --- |
| La capacidad es constante durante el turno. | Simplificación inicial del cronograma. | Puede subestimar variabilidad. | Comparar con datos reales y probar sensibilidad. |
| No se modelan abandonos en la primera versión. | La frecuencia observada es baja. | Puede sobreestimar atendidos. | Incorporar si los datos muestran impacto relevante. |

### 3.7. Referencias

Incluya todas las referencias citadas en el texto y aplique normas APA de manera consistente. Se exige un mínimo de **10 referencias clave** en la introducción. Priorice artículos científicos, libros, documentos técnicos, estándares o fuentes institucionales pertinentes al problema y al enfoque de simulación.

## 4. Criterios de coherencia del proyecto

La calidad de la entrega no depende de incluir muchos elementos, sino de que estos sean coherentes entre sí. Antes de entregar, verifique la siguiente cadena lógica:
| **Problema** | **Decisión** | **Modelo** | **Datos** | **KPIs** | 
| --- | --- | --- | --- | --- |
| ¿qué ocurre? | ¿qué se quiere decidir? | ¿qué debe representarse? | ¿con qué se alimentará? | ¿cómo se compararán escenarios? |

La cadena debe poder leerse en ambos sentidos: los KPIs deben responder a la decisión, los datos deben alimentar los componentes relevantes del modelo y la frontera del sistema debe ser suficiente para responder el problema planteado.

## 5. Formato y presentación

* **Extensión:** 4 a 6 páginas, sin contar anexos.

* Redacción técnica, precisa y coherente. Evite párrafos excesivamente largos y definiciones genéricas sin aplicación al proyecto.

* Todas las figuras y tablas deben ser legibles, estar numeradas y ser mencionadas en el texto.

* Las referencias y citas deben seguir normas APA.

* Use unidades consistentes y defina abreviaturas la primera vez que aparezcan.

* Los anexos pueden contener material de apoyo (diagramas ampliados, instrumentos de recolección, tablas extensas), pero el cuerpo principal debe ser comprensible sin depender de ellos.
