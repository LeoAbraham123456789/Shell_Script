#to print command line  arguments in reverse order

for i in "$@"
do
    echo "$i"
done | tac