# Output the Environment URL
output "environment_url" {
  value = "https://cloud.skytap.com/configurations/${skytap_environment.two_lpar.id}"
}