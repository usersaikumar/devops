# Update first before you start
sudo apt update -y
# add transports binaries
sudo apt -y install curl apt-transport-https
# install kubernetes bineries and checking
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
# Update to refresh
sudo apt update -y
# install kubectl
sudo apt -y install vim git curl wget kubelet kubeadm kubectl
# kubeadm
sudo apt-mark hold kubelet kubeadm kubectl
kubectl version --client && kubeadm version
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
sudo swapoff -a
# overlay
sudo modprobe overlay
# net filter
sudo modprobe br_netfilter
sudo tee /etc/sysctl.d/kubernetes.conf<<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF
# sysctl
sudo sysctl --system
# update again to refresh
sudo apt update -y
# install docker bineries and checking
sudo apt install -y curl gnupg2 software-properties-common apt-transport-https ca-certificates
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# update to refresh
sudo apt update -y
sudo apt install -y containerd.io docker-ce docker-ce-cli
sudo mkdir -p /etc/systemd/system/docker.service.d
sudo tee /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF
# reloading daemon
sudo systemctl daemon-reload 
sudo systemctl restart docker
sudo systemctl enable docker
# overlay
sudo modprobe overlay
# netfilter
sudo modprobe br_netfilter
sudo tee /etc/sysctl.d/kubernetes.conf<<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF
# sysctl
sudo sysctl --system
lsmod | grep br_netfilter
sudo systemctl enable kubelet
# remove unwanted
rm /etc/containerd/config.toml
systemctl restart containerd
