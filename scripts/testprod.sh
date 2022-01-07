gcloud compute instance-groups unmanaged remove-instances nitin-test-prod-cicd-instance-group-1 --zone=asia-south1-a --instances=nitin-prod-vm-instance-1
status=$?
if test $status -eq 0
then
gcloud compute ssh ubuntu@nitin-prod-vm-instance-1 --zone=asia-south1-a --command='sudo /bin/sh /home/ubuntu/pull.sh'
status1=$?
if test $status1 -eq 0
then
gcloud compute instance-groups unmanaged add-instances nitin-test-prod-cicd-instance-group-1 --zone=asia-south1-a --instances=nitin-prod-vm-instance-1
fi
fi
gcloud compute instance-groups unmanaged remove-instances nitin-test-prod-cicd-instance-group-1 --zone=asia-south1-a --instances=nitin-prod-vm-instance-2
status2=$?
if test $status -eq 0
then
gcloud compute ssh ubuntu@nitin-prod-vm-instance-2 --zone=asia-south1-a --command='sudo /bin/sh /home/ubuntu/pull.sh'
status3=$?
if test $status1 -eq 0
then
gcloud compute instance-groups unmanaged add-instances nitin-test-prod-cicd-instance-group-1 --zone=asia-south1-a --instances=nitin-prod-vm-instance-2
fi
fi
gcloud compute instance-groups unmanaged remove-instances nitin-test-prod-cicd-instance-group-1 --zone=asia-south1-a --instances=nitin-prod-vm-instance-3
status=$?
if test $status -eq 0
then
gcloud compute ssh ubuntu@nitin-prod-vm-instance-3 --zone=asia-south1-a --command='sudo /bin/sh /home/ubuntu/pull.sh'
status1=$?
if test $status1 -eq 0
then
gcloud compute instance-groups unmanaged add-instances nitin-test-prod-cicd-instance-group-1 --zone=asia-south1-a --instances=nitin-prod-vm-instance-3
fi
fi
gcloud compute instance-groups unmanaged remove-instances nitin-test-prod-cicd-instance-group-1 --zone=asia-south1-a --instances=nitin-prod-vm-instance-4
status=$?
if test $status -eq 0
then
gcloud compute ssh ubuntu@nitin-prod-vm-instance-4 --zone=asia-south1-a --command='sudo /bin/sh /home/ubuntu/pull.sh'
status1=$?
if test $status1 -eq 0
then
gcloud compute instance-groups unmanaged add-instances nitin-test-prod-cicd-instance-group-1 --zone=asia-south1-a --instances=nitin-prod-vm-instance-4
fi
fi
