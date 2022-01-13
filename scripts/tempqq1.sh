x=$1
echo "First arg: $1" 
gcloud compute ssh alokwinwork@nitin-nodejs-instance-1 --zone=us-central1-a --command='/bin/sh /home/alokwinwork/pull1.sh $x'







