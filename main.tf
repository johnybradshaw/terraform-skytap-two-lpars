provider "skytap" {
  username = "${var.skytap["username"]}"
  api_token = "${var.skytap["api_token"]}"
}

# Create a new environment
resource "skytap_environment" "two_lpar" {
  template_id = "1498907"
  name = "Two Node LPAR environment"
  description = "Two deployed AIX LPARs with an iSCSI network"
}

# Create a new network
resource "skytap_network" "network" {
  environment_id = "${skytap_environment.two_lpar.id}"
  name = "iSCSI"
  domain = "iscsi"
  subnet = "192.168.1.0/24"
  gateway = "192.168.1.254"
  tunnelable = false
}

# Create a new vm
resource "skytap_vm" "lpar1" {
  template_id = 1498907
  vm_id = 39131417
  environment_id = "${skytap_environment.two_lpar.id}"
  name = "Node 2 - AIX 7.2 TL3 SP2"
}