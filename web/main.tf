#ec2

resource "aws_instance" "server" {
    ami = "ami-07caf09b362be10b8"
    instance_type = "t2.micro"
    subnet_id = var.sn
    security_groups = [var.sg]

    tags = {
      Name = "Myserver"
    }
}