resource "aws_internet_gateway" "igw_homol" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "${var.environment}-igw"
    Environment = "${var.environment}"
  }
}