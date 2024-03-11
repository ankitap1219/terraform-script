resource "aws_subnet" "subnet-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.subnet_cidr
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "Subnet 1"
  }
}
