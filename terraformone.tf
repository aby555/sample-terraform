data "aws_ami" "centos" {
  owners = ["973714476881"]
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
}

output "ami" {
  value = data.aws_ami.centos.image_id
}
resource "aws_instance" "frontend" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  tags = {
    Name = "frontend"
  }
}

output "frontend" {
  value = aws_instance.frontend.public_ip
}


resource "aws_instance" "mysql" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  tags = {
    Name = "mysql"
  }
}
resource "aws_instance" "mongodb" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  tags = {
    Name = "mongodb"
  }
}

