us=$1
pid=$2

c=1
maximo=$(cat proceso.txt | wc -l )
while [ $c -le $maximo ];do
    
    
    linea1=$(cat proceso.txt | head -$contador | tail -1) 
    lineaU=$(echo $linea1 | awk '{print $1}')
    lineaP=$(echo $linea1 | awk '{print $2}')

    if [ $us= $lineaU ]; then
	if [ $pid= $lineaP ];then
	    echo "$us es correspondiente con PID $pid"
	else
	    echo "$us no es correspondiente con PID $pid"
	fi
    fi
done
