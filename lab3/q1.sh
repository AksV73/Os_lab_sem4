echo "Enter your name: "
read name
echo "Enter your registration number :"
read regno

echo "Enter File name: "
read filename

if [[ -f $filename ]]; then
	echo "$filename is a file"
elif [[ -d $filename ]]; then
        echo "$filename is a Directory"
else
        echo "No such File or Directory Exists"
fi
