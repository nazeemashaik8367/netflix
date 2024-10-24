provider "aws" {
region = "ca-central-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-074c42dd5ddb28c14"
instance_type = "t2.medium"
key_name = "naziya naaz"
vpc_security_group_ids = ["sg-0cd95bc0c6ae67b9a"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2"]
}
