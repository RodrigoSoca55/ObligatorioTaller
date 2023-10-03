#Agustin Diotti (230494)
#Carola Quintana (305429)
#Rodrigo Soca (327536)

#!/bin/bash

#Parte a)
grep -iE '^[aA].*|.*[aA]$' diccionario.txt > inicio_Fin_a.txt

#Parte b)
sed 's/a/x/g' inicio_Fin_a.txt | cat -n > xpora.txt

#Parte c)
history | awk '{print $1, $2}' | sort -uk2


