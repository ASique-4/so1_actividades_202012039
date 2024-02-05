
# Script de Bash para Consultar y Registrar Datos de Usuario de GitHub

Este script de Bash realiza las siguientes operaciones:

1. **Solicita al Usuario:**
   - Pide al usuario que ingrese su nombre de usuario de GitHub.

2. **Consulta a la API de GitHub:**
   - Consulta la API de GitHub para obtener información sobre el usuario ingresado.

3. **Extracción de Datos:**
   - Extrae el ID del usuario y la fecha de creación de la cuenta del JSON devuelto por la API de GitHub.

4. **Mensaje de Saludo:**
   - Imprime un mensaje de saludo al usuario con su ID y la fecha de creación de la cuenta.

5. **Registro en Log:**
   - Crea un directorio de log en `/tmp` con la fecha actual como nombre del directorio.
   - Crea un archivo de log en el directorio creado y agrega el mensaje de saludo al archivo de log.

6. **Mensaje de Confirmación:**
   - Imprime un mensaje indicando que los datos del usuario se han guardado en el archivo de log.

7. **Cronjob:**
   - Agrega un cronjob para ejecutar el script cada 5 minutos.

**Requisitos:**

- Asegúrese de tener instalado `jq` en su sistema para procesar los datos JSON.
- El script debe tener permisos de ejecución

```bash
./script.sh
```

Reemplace `script.sh` con el nombre real de este script.
