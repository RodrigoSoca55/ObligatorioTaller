#Agustin Diotti (230494)
#Carola Quintana (305429)
#Rodrigo Soca (327536)


ej4 obligatorio)

Se le proveerá un diccionario, se busca que haga una sentencia capaz
de:

a. Crear un archivo con todas las palabras del diccionario que comienzan o
finalizan con la letra ‘a’.

b. Para el anterior punto, crear otro archivo (mediante linea de comandos, es
decir brindar las sentencias que lo hacen posible) cambiando la letra ‘a’ por la
‘x’. (puede obviarse las palabras acentuadas)
Cada línea de dicho archivo debe estar numerada.
ejemplo, si decia
…
abad
abacial
abad
abada
…
deberá decir;
…
xbxd
xbxcixl
xbxd
xbxdx
…

c. Realizar un comando que liste únicamente el nombre de los comandos
aplicados previamente (resultado del history). Es decir, excluyendo
parámetros. Dicha salida no debe contener repetidos y debe estar ordenado
alfabéticamente.
Obligatorio 1 Taller de TecnologiasSeptiembre 2023
Entrega: 05-10-2023
Máximo: 30. Hasta 3 estudiantes por grupo.
ejemplo:
si al ejecutar history dice;
…
23 cd dir1
24 mkdir dir2
25 touch 1.txt
26 tar czvf touch.tar.gz touch1.txt
…
deberá decir
…
23 cd
24 mkdir
25 touch
26 tar
…
(se aceptan variaciones en cuanto al espaciado)


Obligatorio parte 2)
Una veterinaria necesita un sistema
con ciertas características para
realizar distintas actividades.
Las mismas consisten en registros de
pacientes, citas y accesorios, entre
otras.

Realizar un menu que despliegue las siguientes opciones:

1. Registro de socio
Debe poder ingresar nombre y cédula del dueño, nombre y edad de la mascota, y un mail
(debe poder validarse que tenga el simbolo de @). Debe verificar que su cédula no exista
en el sistema previamente. Una vez verificado, se ingresa el socio al archivo “socios.txt” con
el número correspondiente.

2. Manejo de citas
El usuario debe poder agendar una nueva cita, consultar citas existentes o eliminar una cita
programada. Para ello debe crear un archivo “citas.txt” que contenga la cédula del dueño, el
nombre de la mascota, la fecha y hora. Al ingresar a esta opción (opción 2) me muestra un
segundo menu con las opciones (agendar una nueva cita, consultar citas pendientes o
eliminar cita). Queda libre al alumno el flujo de las anteriores opciones. No es necesario
validar estos campos.

3. Salir
Se debe poder salir del programa
Nota: Si se ingresa un número de opción que no sea válido debe volver a solicitar el mismo
