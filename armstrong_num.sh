#to find the armstrong numbers between 2 numbers
read -p "Enter the upper limit and lower limit: " num1 num2
for ((i=$num1; i<=$num2; i++))
do
    num=$i
    sum=0
    while (($num!=0))
    do
        rem=$((num%10))
        num=$((num/10))
        sum=$((sum+((rem**3))))
        sum=$((sum+pro))
    done
    if (($i==$sum))
    then
        echo "$i"
    fi
done