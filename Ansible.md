# Ansible

## Configuration Management Tool

### Yaml Language ---- Key value Piar  --- depends on python

### Ansible GUI called as Ansible Tower

### Advantages
- Key less
- push machanism

### Ansible setup for amazon linux
```
sudo -i
sudo amazon-linux-extras install ansible2 -y
yum install git python python-pip python-level openssal -y
```
### Ansible setup for ubuntu
```
sudo apt-add-repository ppa:ansible/ansible
sudo apt update -y
sudo apt install ansible
```
- setup

```
vi /etc/ansible/hosts
```
Need to add groups like
```
[dev]
172.38.56.2
172.65.85.1
```

```
vi /etc/ansible/ansible.cfg
```
untag or remove # 
```
sudo_user
```
```
useradd ansible
```
```
passwd ansible
```
```
visudo
```
add under root
```
ansible ALL=(ALL)   NOPASSWD: ALL
```
```
vim /etc/ssh/sshd_config
```
untag or remove # and change to yes
```
passwordAuthentication yes
```
#### create ansible user in Node
```
useradd ansible
```
```
passwd ansible
```
```
visudo
```
add under root
```
ansible ALL=(ALL)   NOPASSWD: ALL
```
```
vim /etc/ssh/sshd_config
```
untag or remove # and change to yes
```
passwordAuthentication yes
```
# Connecting to Nodes
- ALL serveres
```
sudo systemctl restart sshd
```
```
sudo systemctl status sshd
```
- switch into ansibe user
- genrate ssh key

```
ssh-keygen
```
```
ssh-copy-id ansible@172.38.56.2
```
```
ssh ansible@172.38.56.2
```
## Ansible Commands
- Ad-hoc commands
- Modules
- Playbooks
### Ad-hoc
if you install in particular node
```
ansible dev[0] -a "touch file1"
```
if you install in every node

```
ansible dev -a "touch file1"
```
we can give any linux command
```
ansible dev -a "yum install git"
```
### Modules
```
ansible dev[0] -b -m yum -a "pkg=git state=present"
```
```
ansible dev[0] -b -m user -a "name=someone"
```
```
ansible dev[0] -b -m copy -a "src=path dest=node path"
```

### playbook
```
--- #comment
- hosts: group_name
  user: ansible
  become: yes
  connection: ssh
  tasks:
    - name: customised_name
      action: yum name=git state=installed

```
#### excustion
```
ansible-playbook file_name.yml
```

