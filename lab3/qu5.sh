echo "Enter your Name : "
read name
echo "Enter your Registration Number : "
read regNo

n=$#
s=($*)

while (true)
do
	 echo "1. Search the patterns within the file"
	 echo "2. Delete the patterns from the file"
	 echo "3. Exit"
         read choice
	 case $choice in
		 1)for((i=1;i<$n;i++))
		   do
			   grep -n ${s[i]} $1
		   done;;
	         2)for((i=1;i<$n;i++))
		   do
		     sed -e s/${s[i]}//g $1 > text.txt
	             mv text.txt $1
	           done
                    cat $1;;
                 3)exit 0;;
                esac
	done		

