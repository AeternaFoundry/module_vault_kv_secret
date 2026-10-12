resource "vault_kv_secret" "kv_secrets" {
  for_each = var.kv_secrets

  data_json = each.value.data_json
  path      = each.value.path
  namespace = each.value.namespace
}

