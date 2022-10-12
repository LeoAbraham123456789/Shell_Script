# accept one or more files as command line arguments and convert its contents to uppercase

for filename in "$@"
do
    if [ ! -e $filename ]
    then
        echo "File not found"
    fi
    tr '[a-z]' '[A-Z]'<$filename
done 