# What does this do?
This Terraform script creates two AIX 7.2 LPARs on the Skytap cloud, it then adds an additional network to be used for iSCSI.

- Create a variables.tf file containing the following
```variable "skytap_username" {
    description = "The username for the Skytap account"
  default = ""
}

variable "skytap_api_token" {
  description = "The API token for the user account"
  default = ""
}```
