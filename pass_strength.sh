#to validate the strength of a password
read -p "Enter the password" pass
if ((${#pass}>=8))
then
    
        echo $pass | grep -q '[a-z]'
        if (($?==0))
        then
            echo $pass | grep -q '[A-Z]'
            if (($?==0))
            then
                echo $pass | grep -q '[0-9]'
                if (($?==0))
                then
                    echo $pass | grep -q '_'
                    if (($?==0))
                    then
                        echo "strong"
                    else
                        echo "Weak"
                    fi
                else
                    echo "Weak"
                fi
            else
                echo "Weak"
            fi
        else
            echo "Weak"
        fi
else
    echo "Weak"
fi