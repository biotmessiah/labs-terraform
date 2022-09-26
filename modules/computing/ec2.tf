data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

    filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "homol" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name        = "${var.environment}-ec2"
    Environment = "${var.environment}"
  }
}

resource "aws_network_interface" "homol" {
  subnet_id = module.networking.subnet_id
}

resource "aws_network_interface_attachment" "homol" {
  instance_id          = aws_instance.homol.id
  network_interface_id = aws_network_interface.homol.id
  device_index         = 0
}

