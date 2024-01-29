resource "aws_instance" "myec2" {
    ami = "ami-0c7217cdde317cfec"
    instance_type = "t2.medium"
    key_name = var.key_name
    

    provisioner "shell" {
        inline = ["sudo apt update -y ","sudo apt install fontconfig openjdk-17-jre -y"]
    }

}
  
