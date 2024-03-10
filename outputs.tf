# public IP of the created machine is

output "public_ip_address" {
    description = "The DNS name of the load balancer"
    value = "${aws_instance.poll_scm.public_ip}"
}
