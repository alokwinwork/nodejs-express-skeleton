date
status=$?
if test $status -eq 0
then 
ls
status1=$?
if test $status1 -eq 0
then
	echo hello
fi
fi


