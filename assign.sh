#/usr/bin/bash
# 1
# 1) List all files in a directory

#ls

# ls=$(ls -l)
# echo $ls

#2
# 2) Read and check if directory exists or create it

# read directory

# if [ -d "$directory" ];
# then
#     echo "directory exists"
# else
#     echo "directory does not exixts"
# fi


#3
# 3) Read N value from user and print numbers between 0 to N


# echo "enter the value of N:" 
# read  N
# for(( i=0;i<"$N";i++))
# {
#     echo "$i"
# }

#4
# 4) Read directory name from user , delete if it exists or print message
# if not exists


# echo "enter the directory name:"
# read dir
# if [ -d "$dir" ];
# then
#     echo "directory exists"
#     rmdir "$dir"
# else
#     echo "directory does not exixts"
# fi

#5
# 5) Copying one directory to another directory

# echo "enter the source directory:"
# read sourcedir
# echo "enter the desination directory:"
# read destdir
# cp  -r "$sourcedir" "$destdir"

#6
#6) Write a shell script to count the only files in the directory.

# count=$(ls | (wc -l))
# echo "$count"

# tree=$(tree)
# echo "$tree"


# countFiles=$(find . -mindepth 1 -maxdepth 1 -type f |( wc -l))
# echo "$countFiles"

#7-help

# source:https://www.baeldung.com/linux/count-directories

# countDir=$(find . -mindepth 1 -type d | (wc -l))
# echo "$countDir"

#7
# 7) Lets Say you Have Directory A, create a new directory named "Backflipt"
   # when Directory A has less than 5 sub-directories or if it has 
   # 5 sub-directories create  a new directory named "Xenovus" in Directory A,
   # else Exit with message "Directory creation not needed"

# countDir=$(find . -mindepth 1 -type d | wc -l)
# backflipt="Backflipt"
# Xenovus="Xenovus"
# if [  "$countDir" -lt 5 ];
# then
#         mkdir "$backflipt"
# elif [ "$countDir" -eq 5 ]
# then
#          mkdir "$Xenovus"
# else
#     echo "Directory creation not needed"
# fi



# #9
# read -p "enter the name:" name
# read -p"enter the contact:" contact
# read -p"enter the email:" email
# read -p "enter the gender:" gender

# case "$gender" in
#     [Mm][Aa][Ll][eE])
#         gender="Male"
#         ;;
#     [Ff][Mm][Aa][Ll][eE])
#         gender="FeMale"
#         ;;
#     *)
#         gender=" Prefer Not to say"
#         ;;
# esac
# if [ -z "$name" -o -z "$contact" -o -z "$email" -o -z "$gender" ]
# then
#         echo "some values are missing"
#         exit
# else
#     echo "name:" $name >>san.txt
#     echo "contact:" $contact >>san.txt
#     echo "email:" $email >>san.txt
#     echo "gender:" $gender >>san.txt
# fi



#echo "# demo for task1" >> README.md
# git init .
#git add .