variable "project_id" {
  type=string
}

variable "machine_name" {
  type=string
}
packer {
  required_plugins {
    googlecompute = {
      version = ">= 1.0.0"
      source = "github.com/hashicorp/googlecompute"
    }
  }
}

source "googlecompute" "custom-mi" {
  project_id = var.project_id
  image_name = var.machine_name
  image_family = var.project_id
  source_image = "ubuntu-2104-hirsute-v20210511a"
  source_image_family = "ubuntu-2104"
  ssh_username = "packer"
  zone = "us-west1-a"
  wrap_startup_script = false
}


build {
  sources = ["source.googlecompute.custom-mi"]
  provisioner "shell" {
    script = "install.sh"
  }
}
