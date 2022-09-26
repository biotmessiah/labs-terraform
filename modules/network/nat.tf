resource "aws_eip" "nat_homol" {
  vpc = true

  tags = {
    Name        = "${var.environment}-nat"
    Environment = "${var.environment}"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_homol.id
  subnet_id = aws_subnet.private-homol-us-east-1a.id
}

