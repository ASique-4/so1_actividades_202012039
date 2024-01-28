# Tipos de Kernel y sus diferencias
## Kernel monolítico
- Es un programa grande y único que maneja todas las funciones esenciales del sistema operativo, como controladores de dispositivos, administración de memoria y programación de procesos.
- Tiene un acceso directo a los recursos de hardware, lo que le da un alto rendimiento.
- Sin embargo, es más propenso a errores y fallos, ya que un problema en una parte del kernel puede afectar a todo el sistema.

## Kernel de microservicios
- Es un programa pequeño y modular que solo proporciona servicios básicos, como comunicación entre procesos y gestión básica de la memoria.
- Las funciones adicionales, como los controladores de dispositivos y los sistemas de archivos, se ejecutan como procesos separados en el espacio del usuario.
- Esto aumenta la confiabilidad y la flexibilidad del sistema, ya que los componentes se pueden aislar y reemplazar fácilmente.
- Sin embargo, tiene un menor rendimiento, ya que requiere más sobrecarga de comunicación entre los componentes.

## Kernel híbrido
- Es una combinación de los dos tipos anteriores, que busca lograr un equilibrio entre rendimiento y flexibilidad.
- Proporciona servicios básicos en el espacio del kernel y permite que se ejecuten funciones adicionales en el espacio del usuario.
- Esto mejora el rendimiento en comparación con los microkernels y ofrece más opciones en comparación con los kernels monolíticos.

# User vs Kernel Mode
## User Mode
- Es el modo en el que se ejecutan las aplicaciones normales, como los navegadores web, los editores de texto o los juegos.
- El código que se ejecuta en User Mode no tiene acceso directo al hardware ni a la memoria del sistema. Debe delegar en las APIs del sistema operativo para realizar cualquier operación que requiera recursos del sistema.
- Esto aumenta la seguridad y la estabilidad del sistema, ya que el código en User Mode está aislado de otros procesos y del sistema operativo. Si una aplicación se bloquea o tiene un error, no afecta al resto del sistema.

## Kernel Mode
- Es el modo en el que se ejecutan los componentes principales del sistema operativo, como los controladores de dispositivos, el administrador de memoria o el planificador de procesos.
- El código que se ejecuta en Kernel Mode tiene acceso completo y sin restricciones al hardware y a la memoria del sistema. Puede ejecutar cualquier instrucción del procesador y referenciar cualquier dirección de memoria.
- Esto mejora el rendimiento y la funcionalidad del sistema, ya que el código en Kernel Mode puede realizar operaciones de bajo nivel y optimizadas con el hardware.
- Sin embargo, también implica un mayor riesgo de errores y fallos, ya que el código en Kernel Mode no está aislado de otros componentes ni del sistema operativo. Si un controlador de dispositivo se bloquea o tiene un error, puede provocar que todo el sistema se bloquee.

# Interruptions vs traps
## Interrupciones
- Son eventos generados por dispositivos externos al procesador, como el teclado, el ratón o el disco duro.
- Son asíncronos, es decir, no dependen del código que se está ejecutando en el momento.
- Se usan para comunicar al procesador que hay una tarea pendiente que requiere su atención, como leer un dato de entrada o escribir un dato de salida.
- El procesador tiene un vector de interrupciones que le indica qué rutina de servicio debe ejecutar para cada tipo de interrupción.

## Traps
- Son eventos generados por el propio procesador, como una división por cero, un acceso a una dirección de memoria inválida o una llamada al sistema operativo.
- Son sincronos, es decir, ocurren en puntos determinados del código que se está ejecutando.
- Se usan para notificar al procesador que hay una condición excepcional que debe ser manejada, como un error, una violación de seguridad o una solicitud de un servicio del sistema operativo.
- El procesador tiene una tabla de descriptores que le indica qué manejador de excepción debe ejecutar para cada tipo de trampa.

