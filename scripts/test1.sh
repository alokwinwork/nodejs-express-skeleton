gcloud compute instance-groups unmanaged remove-instances alok-testcicd-instance-group-1 --zone=us-central1-a --instances=nitin-nodejs-instance-2
status=$?
if test $status -eq 0
gcloud compute ssh alokwinwork@nitin-nodejs-instance-2 --zone=us-central1-a --command='sudo /bin/sh /home/alokwinwork/pull.sh'
status1=$?
if test $status1 -eq 0
gcloud compute instance-groups unmanaged add-instances alok-testcicd-instance-group-1 --zone=us-central1-a --instances=nitin-nodejs-instance-2fi
fi
