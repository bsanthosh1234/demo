echo "enter the directory name:"
read dir
if [ -d "$dir" ];
then
    echo "directory exists"
    rmdir "$dir"
else
    echo "directory does not exixts"
fi