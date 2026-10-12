variable "kv_secrets" {
  description = <<EOT
Map of kv_secrets, attributes below
Required:
    - data_json
    - path
Optional:
    - namespace
EOT

  type = map(object({
    data_json = string
    path      = string
    namespace = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

