us=$1
pid=$2

c=1
maximo=$(cat proceso.txt | wc -l )
pro=true
while [ $c -le $maximo ];do
    
    
    linea1=$(cat proceso.txt | head -$contador | tail -1) 
    lineaU=$(echo $linea1 | awk '{print $1}')
    lineaP=$(echo $linea1 | awk '{print $2}')

    if [ $us= $lineaU ]; then
	if [ $pid= $lineaP ];then
	    echo "$us es correspondiente con PID $pid en la linea $linea1"
	else
	    echo "No existe el PID"
	fi
    else
	echo "No exisre el usuario"
    fi
done
