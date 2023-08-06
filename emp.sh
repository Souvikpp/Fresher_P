Insert()
{
	echo "Enter Employee ID"
	read empid
	echo "Enter Employee Name"
	read empname
	echo "Enter Employee Address"
	read empaddr
	if grep "^$empid," Employee.txt; then
		echo "Employee ID already exists. Could not create duplicate records"
	else
		echo "$empid,$empname,$empaddr">> Employee.txt
        	echo "Employee record created Successfully"
	fi
}
List_All_Records()
{
	echo "-------------------------------------"
	echo "ID Name Address"
	cat Employee.txt
	echo "-------------------------------------"
}
Delete_Record()
{
read -p "Enter Employee ID to delete:" empid
grep -v "^$empid," Employee.txt > temp.txt
mv temp.txt Employee.txt
echo "Employee Record Deleted Successfully"
}
Search_Record()
{
	read -p "Enter Employee ID to search:" empid
	echo "-------------------------------------"
	echo "ID Name Address"
	grep "^$empid," Employee.txt
	echo "-------------------------------------"
}
Sort_Records()
{
	echo "-------------------------------------"
	echo "ID Name Address"
	sort -n Employee.txt
	echo "-------------------------------------"
}

while [ true ]
do
	echo "1:Insert"
	echo "2:List All Records"
	echo "3:Delete Record"
	echo "4:Search Record"
	echo "5:Sort Records"
	echo "Enter Choice: \c"
	read ch

	case $ch in
		1) Insert;;
		2) List_All_Records;;
		3) Delete_Record;;
		4) Search_Record;;
		5) Sort_Records;;
                6) break;;
	esac
done
