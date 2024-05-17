#!/bin/bash

# Contador para la nueva nomenclatura eth<n>
counter=0

# Detectar todas las interfaces de red excepto la loopback
interfaces=$(ls /sys/class/net | grep -v lo)

# Crear reglas persistentes para renombrar las interfaces
udev_rules_file="/etc/udev/rules.d/70-persistent-net.rules"

# Limpiar el archivo de reglas si ya existe
echo "" > $udev_rules_file

for interface in $interfaces; do
    # Obtener la dirección MAC de la interfaz
    mac_address=$(cat /sys/class/net/$interface/address)
    
    # Incrementar el contador
    ((counter++))
    
    # Nuevo nombre de la interfaz
    new_name="eth$counter"
    
    # Crear la regla udev para renombrar la interfaz
    echo "SUBSYSTEM==\"net\", ACTION==\"add\", ATTR{address}==\"$mac_address\", NAME=\"$new_name\"" >> $udev_rules_file

    # Mostrar el cambio
    echo "Interface $interface will be renamed to $new_name"
done

# Informar al usuario que se requiere un reinicio
echo "Udev rules created at $udev_rules_file. Please reboot the system to apply the changes."
