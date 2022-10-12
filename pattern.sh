#to generate a pattern of numbers of n rows
read -p "Enter the number" num
for ((i=1; i<=$num; i++))
do
    for ((j=1; j<=$i; j++))
    do
        echo -n "$i"
    done
    echo
done