x=$1
echo "First arg: $x" 
gcloud compute ssh alokwinwork@nitin-nodejs-instance-1 --zone=us-central1-a --command='x=$1; /bin/sh /home/alokwinwork/pull1.sh $x'







