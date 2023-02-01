countDir=$(find . -mindepth 1 -type d | wc -l)
backflipt="Backflipt"
Xenovus="Xenovus"
if [  "$countDir" -lt 5 ];
then
        mkdir "$backflipt"
elif [ "$countDir" -eq 5 ]
then
         mkdir "$Xenovus"
else
    echo "Directory creation not needed"
fi