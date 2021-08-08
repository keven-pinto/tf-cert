data "aws_ami" "amazon_linux" {
  most_recent = true
  filter {
    name = "architecture"
    values = ["x86_64"]
  }

  filter {
    name = "name"
    values = ["amzn2-ami-hvm-2.0.*"]
  }

  owners = ["amazon"]
  # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

output "ami_id" {
  value = data.aws_ami.amazon_linux.id
}