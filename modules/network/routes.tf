resource "aws_route_table" "private" {
    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.nat.id
    }

    tags = {
        Name        = "${var.environment}-rtb-private"
        Environment = "${var.environment}"
    }
}


resource "aws_route_table" "public" {
    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_internet_gateway.igw_homol.id
    }

    tags = {
        Name        = "${var.environment}-rtb-public"
        Environment = "${var.environment}"
    }
}

resource "aws_route_table_association" "private-us-east-1a" {
    subnet_id = aws_subnet.private-homol-us-east-1a.id
    route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private-us-east-1b" {
    subnet_id = aws_subnet.private-homol-us-east-1b.id
    route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private-us-east-1c" {
    subnet_id = aws_subnet.private-homol-us-east-1c.id
    route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "public-us-east-1a" {
    subnet_id = aws_subnet.public-homol-us-east-1a.id
    route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-us-east-1b" {
    subnet_id = aws_subnet.public-homol-us-east-1a.id
    route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-us-east-1c" {
    subnet_id = aws_subnet.public-homol-us-east-1a.id
    route_table_id = aws_route_table.public.id
}