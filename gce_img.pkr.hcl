source "googlecompute" "custom-mi" {
  project_id = "test-wtf-2734586432"
  source_image = "ubuntu-2104-hirsute-v20210511a"
  ssh_user = "beavis"
  zone = "us-west1-a"
}

build {
  sources = ["source.googlecompute.custom-mi"]
  startup_script_file = "install.sh"
}
