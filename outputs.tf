output "kv_secrets_id" {
  description = "Map of id values across all kv_secrets, keyed the same as var.kv_secrets except keys with no id are omitted"
  value       = { for k, v in vault_kv_secret.kv_secrets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kv_secrets_data" {
  description = "Map of data values across all kv_secrets, keyed the same as var.kv_secrets except keys with no data are omitted"
  value       = { for k, v in vault_kv_secret.kv_secrets : k => v.data if v.data != null && length(v.data) > 0 }
  sensitive   = true
}
output "kv_secrets_data_json" {
  description = "Map of data_json values across all kv_secrets, keyed the same as var.kv_secrets except keys with no data_json are omitted"
  value       = { for k, v in vault_kv_secret.kv_secrets : k => v.data_json if v.data_json != null && length(v.data_json) > 0 }
  sensitive   = true
}
output "kv_secrets_namespace" {
  description = "Map of namespace values across all kv_secrets, keyed the same as var.kv_secrets except keys with no namespace are omitted"
  value       = { for k, v in vault_kv_secret.kv_secrets : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "kv_secrets_path" {
  description = "Map of path values across all kv_secrets, keyed the same as var.kv_secrets except keys with no path are omitted"
  value       = { for k, v in vault_kv_secret.kv_secrets : k => v.path if v.path != null && length(v.path) > 0 }
}

