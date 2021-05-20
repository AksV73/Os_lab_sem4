echo "Enter your Name : "
read name
echo "Enter your Registration Number : "
read regNo

n=$#
s=($*)
echo "Array Before Sorting: "
echo "${s[*]}"
for ((i=0;i<$n;i++))
do
	for((j=0;j<n-i-1;j++))
	do
		if [[ ${s[j]} > ${s[$((j+1))]} ]]
		then
			temp=${s[j]}
			s[j]=${s[$((j+1))]}
			s[$((j+1))]=$temp
		fi
	done
done
echo "Array after sorting: "
echo "${s[*]}"

