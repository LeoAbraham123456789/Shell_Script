#find smallest among three numbers
read -p "Enter three numbers " a b c
if (($a<$b & $a<$c))
then
    echo "The smallest is $a"
elif (($b<$c))
then
    echo "The smallest is $b"
else
    echo "The smallest is $c"
fi