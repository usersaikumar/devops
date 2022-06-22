# Terraform

https://www.freecodecamp.org/news/terraform-syntax-for-beginners/

### Terraform Code fro aws


```
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

```
### Main Block
```
terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 3.0"
   }
 }
}

provider "aws" {
 region = “us-west-1”
}
```
### Resources Block
```
resource "aws_instance" "demo" {
 ami = “ami-00831fc7c1e3ddc60”
 instance_type = “t2.micro”

 tags = {
   name = "Demo System"
 }
}
```
### We can create Variables and assign
```
variable "region" {
 default = "us-west-1"
 description = "AWS Region"
}

variable "ami" {
 default = "ami-00831fc7c1e3ddc60"
 description = "Amazon Machine Image ID for Ubuntu Server 20.04"
}

variable "type" {
 default = "t2.micro"
 description = "Size of VM"
}
```
### all combine
```
terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 3.0"
   }
 }
}
 
provider "aws" {
 region = var.region
}
 
variable "region" {
 default = "us-west-1"
 description = "AWS Region"
}
 
variable "ami" {
 default = "ami-00831fc7c1e3ddc60"
 description = "Amazon Machine Image ID for Ubuntu Server 20.04"
}
 
variable "type" {
 default = "t2.micro"
 description = "Size of VM"
}
 
resource "aws_instance" "demo" {
 count = 3
 ami = var.ami
 instance_type = var.type
 
 tags = {
   name = "Demo System"
 }
}
 
output "instance_id" {
 instance = aws_instance.demo.id
}
```
after thsi we have to save like main.tf
and then we need give
```
terraform plan
```
```
terraform apply
```
### output
```
Plan: 1 to add, 0 to change, 0 to destroy.
 
Changes to Outputs:
  + instance_id = (known after apply)
```
```
terrform destroy
```
### Three life cycle meta argument
- create_before_destroy
- prevent_distroy
- ignore_changes


### Terraform Code fro gcp
```
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("<NAME>.json")

  project = "<PROJECT_ID>"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
```