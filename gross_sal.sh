#Find the gross salary
read -p "Enter the basic salary :" bs
if (($bs >= 1500))
then 
    hr=$((bs*10/100))
    da=$((bs*90/100))
    echo "Gross salary is $((hr+da+bs))"
else
    hr=500
    da=$((bs*98/100))
    echo "Gross salary is $((hr+da+bs))"
fi
