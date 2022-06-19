# Gradle Build Tool

## install Java first

```
sudo apt-get update   
sudo apt install openjdk-8-jre-headless -y
```
```
mkdir /opt/gradle
cd /opt/gradle
```
```
wget https://github.com/usersaikumar/apps/blob/main/gradle-7.4.2-bin.zip
```
or
```
wget https://gradle.org/next-steps/?version=7.4.2&format=bin
```
```
sudo apt-get install unzip
unzip -d gradle-7.4.2-bin.zip
```

### To confirm
```
ls /opt/gradle/gradle-7.4.2
```
```
cd /home
vi .bashrc
```
paste below command at bottom of the page
```
export PATH=$PATH:/opt/gradle/gradle-7.4.2/bin 
```
