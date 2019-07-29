curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

chmod +x ./kubectl

sudo mv ./kubectl /usr/local/bin/kubectl


#Install using native package management
sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

# Install Virtual Box on ubuntu

#Install Minikube

#Before you begin 
#To check if virtualization is supported on Linux, run the following command and verify that the output is non-empty:
egrep --color 'vmx|svm' /proc/cpuinfo

#Install kubectl

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube

sudo install minikube /usr/local/bin

#Cleanup local state

#If you have previously installed minikube, and run:

minikube start

#And this command returns an error:

machine does not exist

#You need to clear minikube’s local state:

minikube delete