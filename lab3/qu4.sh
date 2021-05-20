echo "Enter your Name : "
read name
echo "Enter your Registration Number : "
read regNo

case $1 in
	-linecount)
		wc "$2" -l;;
	-wordcount)
		wc "$2" -w;;
	-charcount)
		wc "$2" -c;;
	*)
		echo "No options submitted"
esac
