# Installing Docker
# update
sudo apt-get update -y
# Downloading docker bineries
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# Update again
sudo apt-get update -y
# Install Docker
sudo apt-get install -y docker-ce
# Installing Kubernetes
# Downloding and checkking kubernetes bineries 
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat << EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
# Update and Install Kubernetes
sudo apt-get update -y
sudo apt-get install -y kubelet kubeadm kubectl
# Network Tables
echo "net.bridge.bridge-nf-call-iptables=1" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
# remove
rm /etc/containerd/config.toml
systemctl restart containerd