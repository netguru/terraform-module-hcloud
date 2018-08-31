variable "token" {
  description = "Hetzner Cloud access token"
}

variable "ssh_key" {
  description = "Hetzner Cloud public ssh key for root access"
}

variable "instance_type" {
  description = "Hetzner Cloud instance type"
  default = "cx21"
}

variable "name" {
  description = "Hetzner Cloud instance name"
}

variable "image" {
  description = "Hetzner Cloud system image"
  default = "ubuntu-16.04"
}

variable "keep_disk" {
  description = "Hetzner Cloud allow downgrade of server"
  default = true
}
