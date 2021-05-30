source "googlecompute" "custom-mi" {
  project_id = "world-conquest-6254"
  image_name = "modified-ubuntu"
  source_image = "ubuntu-2104-hirsute-v20210511a"
  source_image_family = "ubuntu-2104"
  ssh_username = "packer"
  zone = "us-west1-a"
  wrap_startup_script = false
  startup_script_file = "install.sh"
}

build {
  sources = ["source.googlecompute.custom-mi"]
}
