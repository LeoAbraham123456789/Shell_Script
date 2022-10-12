#print a number in reverse order
read -p "Enetr the number" num
while (($num != 0))
do
    rem=$((num%10))
    echo -n $rem
    num=$((num/10)) 
done