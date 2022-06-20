# Maven Build Tool

## maven importanat

### the core concepts of Maven.
```
POM Files:
Dependencies and Repositories
Build Life Cycles, Phases, and Goals
Build Profiles
Build Plugins
```
### pom file looks like
```
<project>
   ...
   <properties>
       <arbitrary.property.x>Text</arbitrary.property.x>
       <hibernate.version>3.2.1.ga</hibernate.version>
   </properties>
   ...
   <dependencies>
       <dependency>
           <groupId>org.hibernate</groupId>
           <artifactId>hibernate</artifactId>
           <version>${hibernate.version}</version>
       </dependency>
   </dependencies>
   ...
</project>
```
### How does Maven work?
```
- Reading the pom.xml file is the first step.
- The dependencies mentioned in pom.xml are then downloaded from the central repository into the local - repository.
- Finally, it builds and generates a report based on the requirements, as well as handles life cycles, phases, goals, plugins, and other tasks.
```
### elements are used for creating a pom.xml file?
```
project
modelVersion
groupId
artifactId
version
dependencies
dependency
name
scope
packaging
```
### the different types of Maven repositories? 
```
Local repository
Central repository
Remote repository
```
### default life cycle
```
Validate
Test
Compile
Verify
Install
Deploy
```


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

