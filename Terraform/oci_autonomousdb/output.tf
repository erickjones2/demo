output "output1" {
  value = "${join("-",[db_url])}" 
}

output "db_url" {
  value = "${oci_database_autonomous_database.flex_autonomous_database.connection_strings}"
}