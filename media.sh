read -p "Introduce un numero :" n
read -p "Introduce otro numero :" m

total=0
contar=0

for i in $(seq $n $m);do
    
    total=$((total+i))
    contar=$((contar+1))
done

    
media=$(echo "scale=2; $total/$contar" | bc)
echo " La media es $media"
