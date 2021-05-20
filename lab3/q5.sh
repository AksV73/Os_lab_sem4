echo "Enter your Name:"
echo "Enter registration number :"

read filename
read dirname
for i in `ls *$filename`
	cp -- "$i" "./$dirname/$i"
