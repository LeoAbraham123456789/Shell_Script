#display the pass status of a student by reading from a file
read -p "Enter the filename: " file
while read line
do
    rhno=${line:0:2}
    sub1=${line:2:3}
    sub2=${line:5:3}
    sub3=${line:8:3}
    if ((${sub1#0}>=10 & ${sub2#0}>=50 & ${sub3#0}>=50))
    then
        p="pass"
    else
        p="fail"
    fi
    echo "Roll No: $rhno Status: $p"
done < $file