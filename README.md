# Scripts

Este repositorio contiene varios scripts útiles para tareas comunes en sistemas Linux. Cada script está documentado con su propósito, instrucciones de uso y cualquier requisito adicional.

## Índice

- [Renombrar Interfaces de Red a ethX](#renombrar-interfaces-de-red-a-ethx)

## Renombrar Interfaces de Red a ethX

### Descripción

El script `rename_interfaces_to_eth.sh` renombra todas las interfaces de red no loopback a `ethX`, donde `X` es un número secuencial comenzando desde 0.

### Uso

1. Clona el repositorio:
    ```sh
    git clone https://github.com/tu-usuario/scripts.git
    cd scripts
    ```

2. Haz que el script sea ejecutable:
    ```sh
    chmod +x rename_interfaces_to_eth.sh
    ```

3. Ejecuta el script:
    ```sh
    sudo ./rename_interfaces_to_eth.sh
    ```

4. Reinicia el sistema para aplicar los cambios:
    ```sh
    sudo reboot
    ```

### Notas

- Asegúrate de revisar el contenido del script y modificarlo según sea necesario antes de ejecutarlo en tu sistema.
- Este script crea archivos de configuración para `udev` y recarga las reglas de `udev` para aplicar los cambios.

## Contribuciones

¡Las contribuciones son bienvenidas! Si deseas agregar más scripts o mejorar los existentes, por favor abre un issue o envía un pull request.

## Licencia

Este proyecto está licenciado bajo la Licencia GPL-3.0. Consulta el archivo [LICENSE](LICENSE) para obtener más información.

