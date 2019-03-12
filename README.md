# What does this do?
This Terraform script creates two AIX 7.2 LPARs on the Skytap cloud, it then adds an additional network to be used for iSCSI.

- Create a variables.tf file (or rename variables.tf.sample) containing the following
```
variable "skytap" {
	type = "map"
    default = {
        "username"  = ""
        "api_token" = ""
    }
}
```
