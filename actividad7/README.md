# Completamente Fair Scheduler (CFS) de Linux

## Introducción

El Completely Fair Scheduler (CFS) es un algoritmo de planificación de procesos en el kernel de Linux. Su objetivo es distribuir de forma justa el tiempo de CPU entre los procesos en ejecución, asegurando una porción equitativa del recurso sin basarse únicamente en prioridades estáticas.

## Características principales

- **Equidad:** CFS garantiza una distribución justa del tiempo de CPU a cada proceso, independientemente de su prioridad o consumo pasado.
- **Imparcialidad:** No favorece a ningún proceso específico, incluyendo procesos del sistema o en tiempo real.
- **Jerarquía:** Admite jerarquías de procesos, permitiendo priorizar grupos de procesos relacionados.
- **Escalabilidad:** Diseñado para manejar un gran número de procesos, incluso en sistemas con miles de núcleos.
- **Eficiencia:** Es un algoritmo eficiente con mínimo impacto en el rendimiento del sistema.

## Funcionamiento

CFS utiliza un algoritmo basado en el tiempo con un **crédito virtual** para cada proceso. Este crédito se incrementa constantemente mientras el proceso no se ejecuta y se agota proporcionalmente al tiempo de CPU utilizado durante la ejecución. El proceso con el mayor crédito virtual es seleccionado para ejecutarse a continuación. Una vez agotado su crédito, el proceso se coloca al final de la cola de planificación y comienza a acumular crédito nuevamente.

## Jerarquías de procesos

CFS permite a los administradores del sistema priorizar grupos de procesos relacionados. Por ejemplo, se puede establecer una jerarquía para una aplicación específica y asignarle una prioridad más alta que a otras aplicaciones, mejorando así el rendimiento de dicha aplicación.

## Impacto en el rendimiento

CFS ha mejorado significativamente el rendimiento del sistema Linux al garantizar una distribución más justa del tiempo de CPU. Su escalabilidad lo hace ideal para sistemas con un gran número de núcleos.

## En resumen

El Completely Fair Scheduler (CFS) es un algoritmo de planificación de procesos moderno y eficiente en el kernel de Linux. Con su enfoque en la equidad, imparcialidad y jerarquía de procesos, es una opción excelente para una variedad de sistemas, desde computadoras personales hasta servidores de gran escala. Se espera que CFS continúe siendo el planificador de procesos predeterminado en Linux durante muchos años.
