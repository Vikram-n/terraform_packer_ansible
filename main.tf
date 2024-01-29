resource "aws_instance" "myec2" {
    ami = "ami-0c7217cdde317cfec"
    instance_type = "t2.medium"
    key_name = var.key_name
    }
  
