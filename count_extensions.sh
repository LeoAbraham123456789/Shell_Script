#find number of files and print count of extensions in a directory
read -p "Enter the directory: " dir
cd $dir
nf=$(ls -R | wc -l)
echo "The number of files: $nf"
ext=$(ls -R)
for file in $ext
do
    if [ -d $file ]
    then
        echo -n
    else
        echo "with extension ${file#*.}"
    fi
done | uniq --count