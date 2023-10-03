#!/bin/bash


#Agustin Diotti (230494)
#Carola Quintana (305429)
#Rodrigo Soca (327536)



#MENÚ PRINCIPAL

menu() {
echo "Menú Principal"
echo ""
echo "1) Registrar socio"
echo ""
echo "2) Manejar citas"
echo ""
echo "3) Salir"
read -p "Seleccione una opción del menú principal: " seleccion

case $seleccion in 
	1)
	registrar_socio
	;;
	2)
	opciones_manejo_citas
	;;
	3)
    	exit 0
    	;;
	*)
    	echo "Selección inválida"
    	;;
	esac

	menu
}

#REGISTRO DE SOCIOS

registrar_socio() {
    while true; do
        read -p "Nombre del dueño: " nombre_dueno
        read -p "Cédula del dueño: " cedula_dueno

        if grep -q "^$cedula_dueno" "socios.txt"; then
            echo "Ya existe un socio con esa cédula"
        else
            read -p "Mail del socio: " mail

            if [[ $mail == *@* ]]; then
                read -p "Nombre de la mascota: " nombre_mascota
                read -p "Edad de la mascota: " edad_mascota

                # Agrego al dueño al archivo socios.txt
                echo "$nombre_dueno ($cedula_dueno) dueño de $nombre_mascota (edad: $edad_mascota). Mail de contacto: $mail " >> socios.txt
                echo "Usuario registrado exitosamente."
                break  # Salir del bucle
            else
                echo "Dirección de mail inválida, debe contener @"
            fi
        fi
    done
}



#MENÚ PARA MANEJO DE CITAS

opciones_manejo_citas(){

	echo "1) Agendar una nueva cita"
	echo ""
	echo "2) Consultar citas pendientes"
	echo ""
	echo "3) Cancelar cita"
	echo ""
	echo "4) Volver al menú principal"
	read -p "Seleccione una opción: " _seleccion

case $_seleccion in
        1)
        agendar_cita
        ;;
        2)
        consultar_citas
        ;;
        3)
        cancelar_cita
	;;
	4)
	menu
	;;
        *)
        echo "Selección inválida"
        ;;
        esac

        opciones_manejo_citas

}


#AGENDAR NUEVA CITA

agendar_cita() {
    read -p "Cédula del dueño: " cedula_buscar
    read -p "Nombre de la mascota: " nombre_mascota_buscar

    if grep -q "El socio con número de cédula $cedula_buscar, dueño de $nombre_mascota_buscar, tiene una cita el" "socios.txt"; then
        read -p "Fecha: " fecha
        read -p "Hora: " hora
        echo "El socio con número de cédula $cedula_buscar, dueño de $nombre_mascota_buscar, tiene una cita el $fecha a las $hora" >> citas.txt
    else
        echo "No se encontró un socio con esa cédula y nombre de mascota"
    fi
    opciones_manejo_citas
}


#CONSULTAR CITAS PENDIENTES

consultar_citas (){
    read -p "Cédula del dueño: " cedula_consulta_citas
    read -p "Nombre de la mascota: " nombre_mascota_consulta_citas

    #Buscar las citas de dicho socio
    citas_encontradas=$(grep "$cedula_consulta_citas.*$nombre_mascota_consulta_citas", "citas.txt")

    if [ -n "$citas_encontradas" ]; then
        echo "Citas pendientes:"
        echo "$citas_encontradas"
    else
        echo "No tienes citas pendientes."
    fi
    opciones_manejo_citas
}


#CANCELAR UNA CITA

cancelar_cita() {
    read -p "Cédula del dueño: " cedula_cancelar
read -p "Nombre de la mascota: " nombre_mascota_cancelar
read -p "Fecha de la cita: " fecha_cancelar


sed -i "/El socio con número de cédula $cedula_buscar, dueño de $nombre_mascota_buscar, tiene una cita el $fecha a las/d" "citas.txt"

if [ $? -eq 0 ]; then
    echo "La cita ha sido cancelada."
else
    echo "No se encontró una cita para cancelar con esos datos."
fi
    opciones_manejo_citas
}

menu
