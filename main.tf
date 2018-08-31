# Create ssh public key for server access
resource "hcloud_ssh_key" "pubkey" {
  name = "${var.instance_name}"
  public_key = "${var.ssh_key}"
}

# Create a new server
resource "hcloud_server" "server" {
  name = "${var.instance_name}"
  image = "${var.image}"
  server_type = "${var.instance_type}"
  keep_disk = "${var.keep_disk}"
  ssh_keys = [ "${hcloud_ssh_key.pubkey.id}" ]
}

# Assign floatimg ip to server
resource "hcloud_floating_ip" "ip" {
  type = "ipv4"
  server_id = "${hcloud_server.server.id}"
}