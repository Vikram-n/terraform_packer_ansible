packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}
packer {
  required_plugins {
    ansible = {
      version = "~> 1"
      source = "github.com/hashicorp/ansible"
    }
  }
}


source "amazon-ebs" "ubuntu" {
  ami_name      = "ubuntu-aws"
  instance_type = "t2.micro"
  region        = "us-east-1"
  source_ami    = "ami-0c7217cdde317cfec"
  ssh_username = "ubuntu"
  
}

build {
  name = "packer-ami-v1"
  sources = [
    "source.amazon-ebs.ubuntu"
  ]
  provisioner "ansible" {
    playbook_file ="./playbook.yml"
  }
}
