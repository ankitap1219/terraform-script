# Creating Security Group
resource "aws_security_group" "sg" {
    vpc_id = aws_vpc.vpc.id

# Inbound Rules

# Internet access from anywhere
ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}

# SSH access from anywhere
ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

# Outbound Rules

# Internet access to anywhere
egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}

tags = {
    Name = "Security-group"
}
}