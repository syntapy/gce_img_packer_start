source "googlecompute" "custom-mi" {
  project_id = "test-wtf-2734586432"
  source_image = "ubuntu-2104-hirsute-v20210511a"
  source_image_family = "ubuntu-2104"
  ssh_user = "beavis"
  zone = "us-west1-a"
  startup_script_file = "install.sh"
}

build {
  sources = ["source.googlecompute.custom-mi"]
}
