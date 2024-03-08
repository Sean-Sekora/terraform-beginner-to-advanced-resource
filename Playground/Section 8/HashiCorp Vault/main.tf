output "db_password" {
  value = data.vault_generic_secret.demo.data_json
  sensitive = true
}
