source "googlecompute" "basic-example" {
  project_id = "test-wtf-2734586432"
  source_image = "debian-9-stretch-v20200805"
  ssh_username = "packer"
  zone = "us-west1-a"
}

build {
  sources = ["sources.googlecompute.basic-example"]
}
