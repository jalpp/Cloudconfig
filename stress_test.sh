#perform stress test on given EC2
sudo amazon-linux-extras install epel -y
sudo yum install stress -y
sudo stress --cpu 10
