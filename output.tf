output "ip" {
  value = "${hcloud_server.server.ipv4_address}"
}

output "name" {
  value = "${hcloud_server.server.name}"
}

output "status" {
  value = "${hcloud_server.server.status}"
}
