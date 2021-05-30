source "googlecompute" "basic-example" {
  project_id = "test-wtf-2734586432"
  source_image = "ubuntu-2104-hirsute-v20210511a"
  ssh_username = "packer"
  zone = "us-west1-a"
}

build {
  sources = ["sources.googlecompute.basic-example"]
}
