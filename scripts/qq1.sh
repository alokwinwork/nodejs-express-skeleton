gcloud compute instance-groups unmanaged remove-instances alok-testcicd-instance-group-1 --zone=us-central1-a --instances=nitin-nodejs-instance-1
status=$?
if test $status -eq 0
then
gcloud compute ssh alokwinwork@nitin-nodejs-instance-1 --zone=us-central1-a --command='sudo /bin/sh /home/alokwinwork/pull1.sh'
status1=$?
if test $status1 -ne 0
gcloud compute instance-groups unmanaged add-instances alok-testcicd-instance-group-1 --zone=us-central1-a --instances=nitin-nodejs-instance-1
fi
fi






