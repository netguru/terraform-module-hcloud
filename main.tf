# Setup provider
provider "hcloud" {
  token = "${var.token}"
}

# Create ssh public key for server access
resource "hcloud_ssh_key" "pubkey" {
  name = "${var.name}"
  public_key = "${var.ssh_key}"
}

# Create a new server
resource "hcloud_server" "server" {
  name = "${var.name}"
  image = "${var.image}"
  server_type = "${var.instance_type}"
  keep_disk = "${var.keep_disk}"
  ssh_keys = [ "${hcloud_ssh_key.pubkey.id}" ]
  user_data = "${var.cloud_init}"
}


