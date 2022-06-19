# Nexus Artifactory

## Nexus Install

```
sudo apt-get update   
sudo apt install openjdk-8-jre-headless -y
cd /opt
wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
tar -xvf latest-unix.tar.gz
```
```
cd /opt/nexus-3.35.0-02/bin (may your version will change)
```
```
./nexus start
./nexus status
```
### Note

```
To access this use http://ip_Address:8081
```
### intial Password
```
cat /opt/sonatype-work/nexus3/admin.password
```