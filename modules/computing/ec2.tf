resource "aws_instance" "homol" {
  ami           = "ami-0c4f7023847b90238"
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

