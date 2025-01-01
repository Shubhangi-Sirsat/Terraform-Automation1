variable "aws_region" {
    default = "ap-south-1"
  
}

variable "security_group" {
  default = "jenkins-sgroup-dec-2021"
}

variable "ami_id" {
  
}

variable "key_name" {
  description = "SSH keys to connect to ec2 instance"
  default = "jenkins-server-key"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "tag_name" {
  default = "ami-0fd05997b4dff7aac"
}

variable "versioning" {
  type = bool
  default = true
}

variable "acl" {
    type =string 
    default = "private"
  
}

variable "bucket_prefix" {
    type =string
    default = "my-s3bucket-"
  
}
variable "tags" {
    type = map
    default={
        environment = "DEV"
        terraform ="true"
    }
  
}