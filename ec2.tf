resource "aws_instance" "poll_scm" {
    ami = "ami-0c7f9161f8491665f"
    instance_type = "t2.micro"
    key_name = "python-kp"
    vpc_security_group_ids = ["${aws_security_group.sg.id}"]
    subnet_id = aws_subnet.subnet-1.id
    associate_public_ip_address = true
    user_data = file("${path.module}/data.sh")

    tags = {
        Name = "poc_scm"

    }

}
