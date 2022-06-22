# Sonar Qube
## Quality Management Tool
- Code Analysis
- Test Reports
- Cover Coverage
## Components of Sonarqube
### SonarQube Server
- Rules
- Database
- web insterface
### Sonar Scanner
- Source Code
- supports to 27 Languages
## Sonar Qube Installation
### Docker Install on ubuntu

To install docker create sh file (example: docker.sh) and paste below commands

```
vi docker.sh
```
```
sudo apt-get update -y
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-key fingerprint 0EBFCD88
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y 
```
```
sh docker.sh
```
#### SonarQube image

```
docker run -d -p 9000:9000 sonarqube:lts
```
