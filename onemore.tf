provider "aws" {
  region = "us-east-1"  # Specify your desired region
}

resource "aws_instance" "example" {
  ami           = "ami-0b5a2b5b8f2be4ec2"  # Specify the AMI ID of the desired Amazon Machine Image (AMI)
  instance_type = "t2.micro"  # Specify the desired instance type

  key_name      = "test"  # Specify the name of the key pair to associate with the instance

  tags = {
    Name = "example-instance"
  }
}
