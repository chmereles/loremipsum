#!/bin/bash

for i in {1..5}
do
    # obtener informacion del archivo
    # el comando wc -l <file>, devuelve cantidad de lineas y nombre del archivo separados por espacio
    file_info=$(wc -l loremipsum-$i.txt)
    
    # obtener el numero de lineas, eliminado el sufijo de la cadena despues del espacio
    lines="${file_info% *}"

    # obtener el nombre del archivo, eliminando la primera parte de la cadena hasta el espacio.
    file_name="${file_info#* }"
    
    # mostrar informacion concatenando el nombre del archivo y la cantidad de lineas 
    echo $file_name "tiene" $lines "lineas."
done