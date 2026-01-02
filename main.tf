
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }
}


provider "aws" {
  region = "us-west-2"
}

###############################################


data "aws_ami" "golden_image" {
  most_recent = true
  owners      = ["287000625265"] # ami-ath
  filter {
    name   = "name"
    values = ["doc-test-*"]
  }
}

/*
variable "names" {
  type = map(string)
  default = {
    instance1 = "Frontend-cbz"
    instance2 = "Backend-cbz"
    instance3 = "Database-cbz"
  }
}

*/

/*
resource "aws_s3_bucket" "test-bucket1" {
  bucket = "test-cbz-bucket1"
  region = "us-west-2"
}
*/




resource "aws_instance" "test-instance" {

  // for_each = var.names
  //for_each = var.names

  //  count             = 3
  ami               = data.aws_ami.golden_image.id
  instance_type     = "t3.micro"
  tags = {
    Name = "ok"
     }
}

/*
az1-1
az1-2
az1-3

az2-1
az2-2
az2-3
*/


