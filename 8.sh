read -p "enter directory:" directory
case $directory in
    [dD][eE][sS])
        ls  /mnt/c/Users/USER/OneDrive/Desktop
        ;;
    [dD][oO][cC])
        ls  /mnt/c/Users/USER/Documents
        ;;
    [dD][oO][wW])
        ls /mnt/c/Users/USER/Downloads
        ;;
    *)
        echo "INVALID DIRECTORY"
        ;;
esac