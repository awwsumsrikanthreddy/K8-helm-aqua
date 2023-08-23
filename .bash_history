sudo vi /etc/ssh/ssh_config
cd /etc/ssh/sshd_config.d/
vi 10-insecure-rsa-keysig.conf
sudo vi 10-insecure-rsa-keysig.conf
sudo chmod 0600 /etc/ssh/sshd_config.d/10-insecure-rsa-keysig.conf
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo apt-get upgrade
sudo apt-get update
sudo curl -fsSLo /etc/apt/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
docker
echo "Install ansible docker repository"
ansible-galaxy install geerlingguy.docker
cat > docker.yaml <<EOF
- name: "Install docker"
  hosts: localhost
  connection: local  
  roles:
    - geerlingguy.docker    
  become: true  
EOF

echo "Run ansible playbook"
ansible-playbook docker.yaml
echo "Start docker service"
sudo usermod -aG docker ubuntu
sudo chmod 666 /var/run/docker.sock
sudo service docker start
sudo systemctl enable docker
ansible
vi script.sh
sudo chmod 755 script.sh 
./script.sh 
vi /home/ubuntu/kube-flannel-rbac.yml
vi docker.sh
sudo chmod 755 docker.sh 
./docker.sh 
sudo modprobe br_netfilter
sudo sysctl -p /etc/sysctl.conf
docker ps -a
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
kubectl apply -f kube-flannel-rbac.yml 
export KUBECONFIG=/etc/kubernetes/admin.conf 
kubectl apply -f kube-flannel-rbac.yml 
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
kubectl get pods -A
kubectl get nodes -A
[13:56] Sharon Amir
sudo kubeadm reset -f; sudo apt-get purge kubeadm kubectl kubelet kubernetes-cni kube* -y; sudo apt-get autoremove -y; sudo rm -rf ~/.kube
vi script.sh 
history
sudo chmod 755 script.sh
./script.sh 
./docker.sh 
sudo modprobe br_netfilter
sudo sysctl -p /etc/sysctl.conf
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl apply -f kube-flannel-rbac.yml
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
export KUBECONFIG=/etc/kubernetes/admin.conf
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
kubectl apply -f kube-flannel-rbac.yml
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get pods -A
sudo kubeadm reset -f; sudo apt-get purge kubeadm kubectl kubelet kubernetes-cni kube* -y; sudo apt-get autoremove -y; sudo rm -rf ~/.kube
vi script.sh 
./script.sh 
./docker.sh 
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
vi k8s.yaml 
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl apply -f kube-flannel-rbac.yml
kubectl get pods -A
kubectl get nodes -A
vi k8s.yaml 
vi script.sh 
vi k8s.yaml 
[13:56] Sharon Amir
sudo kubeadm reset -f; sudo apt-get purge kubeadm kubectl kubelet kubernetes-cni kube* -y; sudo apt-get autoremove -y; sudo rm -rf ~/.kube
kubectl get nodes -A
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get nodes -A
cat /etc/kubernetes/admin.conf
vi k8s.yaml 
vi dokc
vi docker.sh 
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl apply -f kube-flannel-rbac.yml
kubectl get nodes -A
kubectl version
sudo kubeadm reset -f; sudo apt-get purge kubeadm kubectl kubelet kubernetes-cni kube* -y; sudo apt-get autoremove -y; sudo rm -rf ~/.kube
kubectl version
sudo kubeadm reset -f; sudo apt-get purge kubeadm kubectl kubelet kubernetes-cni kube* -y; sudo apt-get autoremove -y; sudo rm -rf ~/.kube
sudo modprobe br_netfilter
sudo sysctl -p /etc/sysctl.conf
sudo kubeadm reset -f; sudo apt-get purge kubeadm kubectl kubelet kubernetes-cni kube* -y; sudo apt-get autoremove -y; sudo rm -rf ~/.kube
kubectl
sudo apt-get purge kubeadm
sudo apt-get purge kubectl
sudo apt-get purge kubelet
kubectl
sudo apt-get purge kubeadm
sudo apt-get purge kubernetes-cni
sudo rm -rf ~/.kube
sudo apt-get purge kube*
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
./docker.sh 
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl apply -f kube-flannel-rbac.yml
export KUBECONFIG=/etc/kubernetes/admin.conf
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
sudo modprobe br_netfilter
sudo sysctl -p /etc/sysctl.conf
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
vi docker.
vi docker.sh 
vi script.sh 
./script.sh 
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
kubectl get pods -A
cd /etc/kubernetes/
ls -la
vi admin.conf 
kubectl cluster-info
kubectl cluster-info dump
kubectl get nodes
free -m
swapoff -a
exit
strace -eopenat kubectl version
kubectl get pods -A
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get pods -A
strace -eopenat kubectl version
export KUBECONFIG=/etc/kubernetes/kubelet.conf
kubectl get pods -A
cd /etc/kubernetes/
ls -la
sudo chmod +r kubelet.conf 
export KUBECONFIG=/etc/kubernetes/kubelet.conf
kubectl get pods -A
export KUBECONFIG=/etc/kubernetes/admin.conf 
kubectl get pods -A
sudo systemctl status docker.s
sudo systemctl status docker.service 
docker ps -a
sudo systemctl status kubelet.service 
free -m
cd 
ls -la
export KUBECONFIG=/etc/kubernetes/admin.conf
sudo systemctl restart kubelet.service 
sudo systemctl status kubelet.service 
vi /etc/systemd/system/kubelet.service.d
cd /etc/systemd/system
ls -la
cd kubelet.service.d/
ls -la
vi 10-kubeadm.conf 
sudo swapoff -a
sudo systemctl restart kubelet.service
kubectl reset
kubeadm reset
kubeadm init
sudo kubeadm init
sudo rm -rf /etc/kubernetes/
sudo kubeadm init
cd
./docker.sh 
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
sudo systemctl restart kubelet.service
sudo apt-get purge docker
docker
sudo apt-get purge -y docker.io
docker
dpkg -l | grep -i docker
sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli docker-compose-plugin
docker
vi containerd.sh
sudo chmod 755 containerd.sh 
./containerd.sh 
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get pods -A
kubectl get nodes 
vi script.sh 
./script.sh 
kubectl get nodes 
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get nodes 
vi script.sh 
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
kubectl get nodes 
kubectl get pods 
kubectl get pods -A
ls -la
kubectl apply -f kube-flannel-rbac.yml
kubectl get pods -A
kubectl get nodes 
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
kubectl get pods -A
kubectl get nodes 
vi k8s.yaml 
kubectl apply -f //raw.githubusercontent.com/coreos/flannel//Documentation/kube-flannel.yml
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/Documentation/kube-flannel.yml
curl https://raw.githubusercontent.com/coreos/flannel/Documentation/kube-flannel.yml
ls -la
sudo kubeadm reset -f
modprobe br_netfilter
sysctl -p /etc/sysctl.conf
sudo sysctl -p /etc/sysctl.conf
sudo apt-get purge kubeadm
sudo apt-get purge kubectl
sudo apt-get purge kubelet
sudo apt-get purge kubenetes-cni
sudo apt-get purge kube*
ls -la
sudo rm -rf .kube
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl apply -f kube-flannel-rbac.yml
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
kubectl get pods -A
kubectl get nodes
export KUBECONFIG=/etc/kubernetes/admin.conf 
kubectl get pods -A
kubectl get nodes
export KUBECONFIG=/etc/kubernetes/admin.conf 
kubectl get pods -A
export KUBECONFIG=/etc/kubernetes/kubelet.conf 
kubectl get pods -A
export KUBECONFIG=/etc/kubernetes/admin.conf 
kubectl get pods -A
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
ls -la
./containerd.sh 
docker
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
sudo systemctl status kubelet.service 
sudo systemctl restart kubelet.service 
sudo systemctl status kubelet.service 
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
sudo systemctl status kubelet.service 
export KUBECONFIG=/etc/kubernetes/admin.conf 
kubectl get pods -A
kubectl get nodes
sudo kubeadm reset -f;
sudo apt-get purge kubeadm
sudo apt-get purge kubectl
sudo apt-get purge kubelet
sudo rm -rf .kube/
ls -la
vi k8s.yaml 
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
export KUBECONFIG=/etc/kubernetes/admin.conf 
kubectl apply -f kube-flannel-rbac.yml
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
kubectl get pods -A
kubectl get nodes
rm docker.sh 
sudo kubeadm reset -f;
sudo apt-get purge kubeadm
sudo apt-get purge kubelet
sudo apt-get purge kubectl
sudo rm -rf .kube/
ls -la
rm docker.yaml 
exit
cd /etc/kubernetes/
ls -la
cd ..
export KUBECONFIG=/etc/kubernetes/admin.conf 
kubectl get pods -A
kubectl get nodes
kubectl get pods -A
export KUBECONFIG=/etc/kubernetes/admin.conf 
kubectl get pods -A
sudo kubeadm init --ignore-preflight-errors all --apiserver-cert-extra-sans 35.87.108.245
kubectl get pods - A
kubectl get pods -A
kubectl get nodes
kubectl version
cd /home/ubuntu/
ls -la
vi k8s.yaml 
date
vi k9
vi k8s.yaml 
cat > k8s.yaml <<EOF
- name: "Deploy kubernetes cluster - master"
  hosts: masters
  connection: local
  vars:
    kubernetes_allow_pods_on_master: true
    kubernetes_version: '<kubernetes_version>'
    kubernetes_version_kubeadm: 'stable-{{kubernetes_version}}'    
    kubernetes_flannel_manifest_file_rbac: https://raw.githubusercontent.com/coreos/flannel/${FLANNEL_VERSION}/Documentation/kube-flannel.yml
    # kubernetes_kubeadm_init_extra_opts: "--apiserver-cert-extra-sans <master_ip>"
  roles:    
    - geerlingguy.kubernetes
  become: true
  tasks:
    - name: create .kube directory      
      become_user: ubuntu
      file:
        path: $HOME/.kube
        state: directory
        mode: 0755
    - name: Check admin.conf file exists.
      stat:
        path: /etc/kubernetes/admin.conf
      register: k8s_conf
    - name: copy admin.conf to user''s kube config
      copy:
        src: /etc/kubernetes/admin.conf
        dest: /home/ubuntu/.kube/config
        remote_src: yes
        owner: ubuntu
      when: k8s_conf.stat.exists
- name: "Join worker to kubernetes cluster"
  hosts: workers
  connection: ssh
  vars:
    kubernetes_version: '<kubernetes_version>'
    kubernetes_version_kubeadm: 'stable-{{kubernetes_version}}'
    kubernetes_role: "node"
  roles:    
    - geerlingguy.kubernetes
  become: true
EOF

ls -la
vi k8s.yaml 
exit
sudo kubeadm reset -f;
sudo apt-get purge kubeadm 
sudo apt-get purge kubectl
sudo apt-get purge kubelet
sudo apt-get purge kubenetes-cni
sudo apt-get purge kube*
sudo apt-get autoremove
sudo rm -rf .kube/
ls -la
kubectl version
kubectl get pods -A
kubectl logs pod kube-flannel-ds-n7vl2 -n kube-flannel
kubectl pod logs kube-flannel-ds-n7vl2 -n kube-flannel
kubectl logs kube-flannel-ds-n7vl2 -n kube-flannel
kubectl get pods -A
kubectl get events -n aqua
kubectl get events -A
export KUBECONFIG=/etc/kubernetes/admin.conf 
kubectl get events -A
sudo systemctl restart kubelet.service 
kubectl get events -A
sudo systemctl status kubelet.service 
kubectl get events -A
sudo systemctl status kubelet.service 
kubectl get pods -A
kubectl get nodes
kubectl get events -A
df -h
kubectl get events -A
systemctl restart containerd
sudo systemctl restart containerd
sudo systemctl restart kubelet
kubectl get events -A
export KUBECONFIG=/etc/kubernetes/admin.conf 
kubectl get events -A
sudo systemctl status containerd
sudo systemctl status kubelet
free -m
sudo systemctl status kubelet
export KUBECONFIG=/etc/kubernetes/admin.conf 
kubectl get events -A
sudo kubeadm init --ignore-preflight-errors all --apiserver-cert-extra-sans 35.161.145.192
kubectl get events -A
export KUBECONFIG=/etc/kubernetes/admin.conf 
kubectl get events -A
kubectl get pods -A
export KUBECONFIG=/etc/kubernetes/admin.conf 
kubectl get pods -A
ll
export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook $HOME/k8s.yaml -i $HOME/hosts
ls -la
export KUBECONFIG=/etc/kubernetes/admin.conf 
kubectl apply -f kube-flannel-rbac.yml
sudo kubeadm reset -f;
ls -la
sudo rm -rf .kube
sudo rm -rf /etc/cni/net.d
sudo apt-get purge kubeadm
sudo apt-get purge kubectl
sudo apt-get purge kubelet
sudo apt-get autoremove 
sudo modprobe br_netfilter
sudo sysctl -p /etc/sysctl.conf
exit
export KUBECONFIG=/etc/kubernetes/admin.conf 
kubectl get pods -A
ls -la
cd .kube/
ls -la
kubectl get pods -A
sudo kubeadm reset -
sudo kubeadm reset -f
sudo rm -rf /etc/cni/net.d
sudo apt-get purge kubeadm
sudo apt-get purge kubelet
sudo apt-get purge kubectl
sudo apt-get purge kubenetes-cni
sudo apt-get purge kubernetes-cni
modprobe br_netfilter
sudo sysctl -p /etc/sysctl.conf
cd ..
sudo rm -rf .kube
sudo systemctl status containerd.service 
sudo systemctl status docker
docker
vi k8s.yaml 
cat /etc/os-release 
vi k8s.yaml 
cat /etc/os-release 
vi k8s.yaml 
cat /etc/os-release 
vi k8s.yaml 
kubeadm
vi k8s.yaml 
hostname
cat /etc/hosts
sudo apt update
apt list --upgradable
sudo apt -y upgrade
sudo apt -y upgrade
sudo apt-get install -y apt-transport-https ca-certificates curl
telnet 
netstat
sudo apt install net-tools
unamr -a
uname -a
reboot
sudo reboot
uname -a
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo apt autoremove
sudo apt-get install -y apt-transport-https ca-certificates curl
ll /etc/apt/sources.list.d
cat /etc/apt/sources.list.d/kubernetes.list 
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt update
cd /etc/apt/sources.list.d
ll
cat apt_kubernetes_io.list 
cat kubernetes.list
mv apt_kubernetes_io.list /tmp/
SUDO mv apt_kubernetes_io.list /tmp/
sudo  mv apt_kubernetes_io.list /tmp/
sudo apt update
apt list --upgradable
sudo apt -y upgrade
apt list --upgradable
sudo apt update
sudo apt -y upgrade
sudo apt-get install -y kubelet kubeadm kubectl kubernetes-cni
kubeadm version
sudo apt update
cat /etc/os-release 
kubelet version
kubelet --version
sudo modprobe overlay
sudo modprobe br_netfilter
sudo ls /etc/sysctl.d
sudo ls -al /etc/sysctl.d
sudo apt-get update
containerd
containerd version
containerd --version
sudo apt-get install     ca-certificates     curl     gnupg     lsb-release -y
ll /etc/apt/keyrings
sudo apt remove containerd
sudo apt update
sudo apt install containerd.io -y
sudo cat /etc/apt/sources.list.d/kubernetes.list 
sudo cat /etc/containerd/config.toml
sudo systemctl restart containerd
sudo systemctl status containerd
containerd --version
cd
cat /etc/o
cat /etc/os-release 
kubeadm version
vi k8s.yaml 
kubeadm version
sudo apt-get install -y kubelet kubeadm kubectl kubernetes-cni
cat /etc/os-release 
df -
top
sudo swapoff -a
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
cat /etc/fstab 
sudo tee /etc/modules-load.d/containerd.conf <<EOF
overlay
br_netfilter
EOF

sudo modprobe overlay
sudo modprobe br_netfilter
sudo cat /etc/sysctl.d/kubernetes.conf
sudo tee /etc/sysctl.d/kubernetes.conf <<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF 



sudo cat /etc/sysctl.d/kubernetes.conf

sudo cat /etc/sysctl.d/kubernetes.conf
sudo tee /etc/sysctl.d/kubernetes.conf <<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF 


sudo vi /etc/sysctl.d/kubernetes.conf
sudo cat /etc/sysctl.d/kubernetes.conf
sudo sysctl --system
sudo apt install -y curl gnupg2 software-properties-common apt-transport-https ca-certificates
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/docker.gpg
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y containerd.io
sudo systemctl restart containerd
sudo systemctl enable containerd
sudo apt update
sudo apt install -y kubelet kubeadm kubectl
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-archive-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
cat /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-get install kubeadm=1.27
sudo apt-get install kubeadm=1.27.2
sudo apt-get install kubeadm=1.27-02
sudo apt-get install kubeadm=1.27-00
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update 
sudo apt-get install kubelet=1.27-00 kubeadm=1.27-00 kubectl=1.27-00
apt-cache madison kubeadm
sudo apt-get install kubelet=1.27.2-00 kubeadm=1.27.2-00 kubectl=1.27.2-00
kubeadm version
kubectl version
kubelet version
kubelet --version
kubeadm --version
kubeadm version
apt-cache madison kubeadm | grep 1.27
vi k8s.yaml 
kubeadm version
cd /etc/containerd
ll
vi config.toml 
sudo vi config.toml 
sudo vi config.toml | grep SystemdCgroup
sudo cat config.toml | grep SystemdCgroup
history
locate config.toml
sudo apt install plocate
locate config.toml
vi /etc/containerd/config.toml
history | grep toml
sudo cat config.toml | grep SystemdCgroup
cd /etc/containerd
sudo cat config.toml | grep SystemdCgroup
cd
ll
cd .ansible/
ll
ll roles/
cat /etc/os-release 
ll
curl ifconfig.io
ll
zip
sudo apt install zip
unzip
ll
mkdir tmp
ll tmp/
mv roles.orig.zip tmp/
cd tmp/
ll
unzip roles.orig.zip 
ll
ll ../
mv roles.orig ../
ll
rm roles.orig.zip 
ll
cd ..
ll
ll roles
ll roles.orig/
diff -r roles roles.orig/
ll
rm -rf roles
ll
mv roles.orig/ roles
ll
ll tmp/
cd tmp/
ll ansible-tmp-1673179229.4140685-29439-91535510015026/
cd\
cd
cd .ansible/
ll
cd roles/
ll
grep -r 1.20 *
cd
ll
vi kube-flannel-rbac.yml 
locate config.toml
vi /etc/containerd/config.toml
history 
sudo cat /etc/containerd/config.toml | grep SystemdCgroup
cd
cd .ansible/
ll
ll roles/
grep -r 1.20 *
cd roles/
grep -r 1.20 *
cd
ll
cd
telnet
netstat
ll
kubeadm version
kubelet version
kubelet --version
kubectl --version
kubectl version
docker
cat /etc/os-release 
sudo apt list
sudo apt list | grep python
sudo apt list | grep kube
cat /etc/modules-load.d/containerd.conf
cat /etc/sysctl.d/99-kubernetes-cri.conf
sudo cat /etc/sysctl.d/99-kubernetes-cri.conf
locate kubernetes-cri
sudo apt-get update
sudo apt-get -qq install -y apt-transport-https ca-certificates curl software-properties-common
sudo apt-get  install -y apt-transport-https ca-certificates curl software-properties-common
cointainerd version
cointainerd --version
containerd
containerd version
containerd --version
sudo apt-get -qq install -y containerd.io
sudo apt-get  install -y containerd.io
ll /etc/containerd/
vi /etc/containerd/config.toml 
systemctl is-active containerd
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get  install -y containerd.io
apt-cache madison containerd
ll
wget https://github.com/containerd/containerd/releases/download/v1.7.2^Containerd-1.7.2-linux-amd64.tar.gz
wget https://github.com/containerd/containerd/releases/download/v1.7.2/Containerd-1.7.2-linux-amd64.tar.gz
ll
ll /usr/local/
sudo tar Cxzvf /usr/local Containerd-1.7.2-linux-amd64.tar.gz 
ll /usr/local/
ll /usr/local/bin/
ll
wget https://github.com/opencontainers/runc/releases/download/v1.1.7/runc.amd64
ll
sudo install -m 755 runc.amd64 /usr/local/sbin/runc
/usr/local/sbin/runc
/usr/local/sbin/runc --version
wget https://github.com/containernetworking/plugins/releases/download/v1.2.0/cni-plugins-linux-amd64-v1.2.0.tgz
ll
ls /opt/cni/bin
ls -al
ls -al /opt/cni/bin
sudo mv /opt/cni/bin /opt/cni/bin.15.6.23
ll /opt/cni/
sudo mkdir -p /opt/cni/bin
sudo tar Cxzvf /opt/cni/bin cni-plugins-linux-amd64-v1.2.0.tgz 
ll /opt/cni/
diff -r /opt/cni/bin /opt/cni/bin.15.6.23/
sudo diff -r /opt/cni/bin /opt/cni/bin.15.6.23/
ll /etc/con
ll /etc/containerd/
sudo systemctl enable --now containerd
sudo systemctl status containerd
sudo systemctl restart containerd
sudo systemctl status containerd
containerd --version
apt-cache madison containerd list
apt-cache madison list
apt-cache madison kube list
apt list
apt list | grep kube
kubeadm --version
kubeadm version
apt list | grep kubeadm
sudo apt remove kubeadm
apt list | grep kubeadm
sudo apt remove kubeadm/kubernetes-xenial
kubeadm
kubelet
sudo kubelet
sudo kubelet --version
sudo apt purge kubeadm
sudo apt remove kubelet
sudo apt purge kubelet
sudo apt remove kubectl
sudo apt purge  kubectl
kubectl
kubeadm
kubeket
cd .ansible/
lkl
ll
cd roles/
ll
cd geerlingguy.kubernetes/
ll
grep -r containerd
grep -r containerd *
containerd --version
ll
sudo vi /lib/systemd/system/containerd.service
cat  /lib/systemd/system/containerd.service
/usr/local/bin/containerd --version
unset TMOUT
kubectl get pods
sudo snap install kubectl
sudo su
unset TMOUT
kubectl get pods
kubectl get pods -A
git clone -b 2022.4 https://github.com/aquasecurity/aqua-helm.git
cd aqua-helm/
./kube-enforcer/gen-certs.sh
ls
cd kube-enforcer/
ls
cp ../ca* .
ls
cd ..
ls
cp server.key kube-enforcer/
cp server.crt kube-enforcer/
cd kube-enforcer/
ls
cat ca.crt |  base64 | tr -d '\n'
vi values.yaml 
cat server.crt |  base64 | tr -d '\n'
vi values.yaml 
cat server.key |  base64 | tr -d '\n'
vi values.yaml 
helm repo add aqua-helm https://helm.aquasec.com
sudo snap install helm
sudo snap install helm --classic
helm repo add aqua-helm https://helm.aquasec.com
helm repo update
helm search repo aqua-helm/kube-enforcer --versions
helm upgrade --install --namespace aqua kube-enforcer aqua-helm/kube-enforcer
cat ca.crt |  base64 | tr -d '\n'
grep -i caBundle: values.yaml 
helm search repo aqua-helm/kube-enforcer --versions
kubectl create namespace aqua
#helm upgrade --install --namespace aqua kube-enforcer aqua-helm/kube-enforcer --values values.yaml --version 2022.4.26
ls
pwd
cd ~
pwd
ls
helm upgrade --install --namespace aqua kube-enforcer aqua-helm/kube-enforcer --values /home/ubuntu/aqua-helm/kube-enforcer/values.yaml --version 2022.4.26
vi  /home/ubuntu/aqua-helm/kube-enforcer/values.yaml
vi pas
cleasr
clear
vi  /home/ubuntu/aqua-helm/kube-enforcer/values.yaml
helm upgrade --install --namespace aqua kube-enforcer aqua-helm/kube-enforcer --values /home/ubuntu/aqua-helm/kube-enforcer/values.yaml --version 2022.4.26
helm dependency build
helm upgrade --install --namespace aqua kube-enforcer aqua-helm/kube-enforcer --values /home/ubuntu/aqua-helm/kube-enforcer/values.yaml --version 2022.4.26
cd  /home/ubuntu/aqua-helm/kube-enforcer/
ls
helm --version
helm -v
helm version
helm dependency update
helm dependency build
helm upgrade --install --namespace aqua kube-enforcer aqua-helm/kube-enforcer --values /home/ubuntu/aqua-helm/kube-enforcer/values.yaml --version 2022.4.26
kubectl  get pods
kubectl  get pods -n aqua
vi values.yaml 
helm upgrade --install --namespace aqua kube-enforcer aqua-helm/kube-enforcer --values /home/ubuntu/aqua-helm/kube-enforcer/values.yaml --version 2022.4.26
kubectl  get pods -n aqua
kubectl delete pods aqua-kube-enforcer-54bb48886d-l6m8k -n aqua
kubectl  get pods -n aqua
kubectl logs -f aqua-kube-enforcer-54bb48886d-fvjk4 -n aqua
kubectl  get pods -n aqua
kubectl describe pods -n aqua aqua-kube-enforcer-54bb48886d-fvjk4
rm pas
ls
vi values.yaml 
kubectl  get pods -n aqua
kubectl delete pods -n aqua aqua-kube-enforcer-54bb48886d-fvjk4
kubectl  get pods -n aqua
helm upgrade --install --namespace aqua kube-enforcer aqua-helm/kube-enforcer --values /home/ubuntu/aqua-helm/kube-enforcer/values.yaml --version 2022.4.26
kubectl  get pods -n aqua
kubectl delete -n aqua aqua-kube-enforcer-54bb48886d-sh4mg
kubectl  get pods -n aqua
kubectl delete pods -n aqua aqua-kube-enforcer-54bb48886d-sh4mg
kubectl  get pods -n aqua
kubectl logs -f aqua-kube-enforcer-54bb48886d-zkn58 -n aqua
kubectl  get pods -n aqua
kubectl logs -f aqua-kube-enforcer-54bb48886d-zkn58 -n aqua
vi values.yaml 
ping 54.177.22.156
vi values.yaml 
ls
vi values.yaml 
ls
cd templates/
ls
vi kube-enforcer-deployment.yaml 
