# terraform-module-hcloud

A terraform module to provide a server in Hetzner Cloud, that we use in Netguru

Module Input Variables
----------------------

- `token` - Access token for Hetzner Cloud.
- `ssh-key` - Public SSH key for root account access.
- `name` - Name for created server.
- `type` - (optional) Hetzner cloud instance type, defaults to cx21.
- `image` - (optional) System image to use, defaults to ubuntu-16.04.
- `keep_disk` - (optional) If true, do not upgrade the disk. This allows downgrading the server type later, defaults to true.

Usage
-----

```hcl
module "hetzner" {
  source = "git@github.com/netguru/terraform-module-hcloud.git"

  token = "<hcloud_token>"
  ssh_key = "<ssh_public_key>"
  name = "example_server"

}
```


Outputs
=======

 - `name` - Instance name.
 - `ip` - Instance floating IPv4 address.
 - `status` - The status of the instance.

