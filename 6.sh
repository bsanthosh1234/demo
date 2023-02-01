countFiles=$(find . -mindepth 1 -maxdepth 1 -type f |( wc -l))
echo "$countFiles"
