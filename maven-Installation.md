# Maven Build Tool

## install Java first

```
sudo apt-get update   
sudo apt install openjdk-8-jre-headless -y
```
```
mkdir /opt/maven
cd /opt/maven
```
```
wget https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz
```
```
sudo tar xzvf apache-maven-3.8.6-bin.tar.gz
```

### To confirm
```
ls /opt/maven/
```
```
cd /home
vi .bashrc
```
paste below command at bottom of the page
```
export PATH=/opt/apache-maven-3.8.6/bin:$PATH 
```

