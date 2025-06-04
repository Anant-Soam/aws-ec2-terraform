
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.97.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region

}
resource "aws_instance" "myserver" {
    ami="ami-0f88e80871fd81e91" #if we replace ami id then it will destroy first and create new 
    instance_type = "t2.micro"

    tags ={
        Name="MyServer"
    }
  
}