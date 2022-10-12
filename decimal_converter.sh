#convert decimal to binary and hexadecimal
read -p "Enter the number" num
res=""
nums=$num
while (($num!=0))
do
    rem=$((num%2))
    num=$((num/2))
    res=$rem$res
done
echo "The binary equivalent is: $res"
res=""
while (($nums!=0))
do
    rem=$((nums%16))
    nums=$((nums/16))
    if (($rem>9))
    then
        f=$((rem-9))
        case $f in
        1)rem='A'
            ;;
        2)rem='B'
            ;;
        3)rem='C'
            ;;
        4)rem='D'
            ;;
        5)rem='E'
            ;;
        6)rem='F'
            ;;
        esac
    fi
    res=$rem$res
done
echo "The hexadecimal equivalent is: $res"