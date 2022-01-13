echo "First arg: $1" 
gcloud compute ssh alokwinwork@nitin-nodejs-instance-1 --zone=us-central1-a --command="sudo /bin/sh /home/alokwinwork/pull.sh $1"








