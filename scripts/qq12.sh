date
status=$?
if test $status -eq 0
then
echo "hello"
status1=$?
if test $status1 -ne 0
then
echo "hello1"
fi
fi






