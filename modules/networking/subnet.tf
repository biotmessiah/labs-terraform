resource "aws_subnet" "private-homol-us-east-1a" {
    vpc_id = aws_vpc.main.id
    cidr_block = "172.40.0.0/24"
    availability_zone = "us-east-1a"
    tags = {
      "Name" = "private-homol-us-east-1a"
    }
  
}

resource "aws_subnet" "private-homol-us-east-1b" {
    vpc_id = aws_vpc.main.id
    cidr_block = "172.40.1.0/24"
    availability_zone = "us-east-1b"
    tags = {
      "Name" = "private-homol-us-east-1b"
    }
  
}

resource "aws_subnet" "private-homol-us-east-1c" {
    vpc_id = aws_vpc.main.id
    cidr_block = "172.40.2.0/24"
    availability_zone = "us-east-1c"
    tags = {
      "Name" = "private-homol-us-east-1c"
    }
  
}


resource "aws_subnet" "public-homol-us-east-1a" {
    vpc_id = aws_vpc.main.id
    cidr_block = "172.40.3.0/24"
    availability_zone = "us-east-1a"
    tags = {
      "Name" = "private-homol-us-east-1a"
    }
  
}

resource "aws_subnet" "public-homol-us-east-1b" {
    vpc_id = aws_vpc.main.id
    cidr_block = "172.40.4.0/24"
    availability_zone = "us-east-1b"
    tags = {
      "Name" = "private-homol-us-east-1b"
    }
  
}

resource "aws_subnet" "public-homol-us-east-1c" {
    vpc_id = aws_vpc.main.id
    cidr_block = "172.40.5.0/24"
    availability_zone = "us-east-1c"
    tags = {
      "Name" = "private-homol-us-east-1c"
    }
  
}
