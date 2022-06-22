# Ansible cheet sheet

## Configuration Management Tool

### Yaml Language ---- Key value Piar  --- depends on python

### Ansible GUI called as Ansible Tower

### Advantages
- Key less
- push machanism

### Ansible setup
```
sudo -i
sudo amazon-linux-extras install ansible2 -y
yum install git python python-pip python-level openssal -y
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
