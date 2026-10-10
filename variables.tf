variable "appmesh_meshes" {
  description = <<EOT
Map of appmesh_meshes, attributes below
Required:
    - name
Optional:
    - region
    - tags
    - tags_all
    - spec (block):
        - egress_filter (optional, block):
            - type (optional)
        - service_discovery (optional, block):
            - ip_preference (optional)
EOT

  type = map(object({
    name     = string
    region   = optional(string)
    tags     = optional(map(string))
    tags_all = optional(map(string))
    spec = optional(object({
      egress_filter = optional(object({
        type = optional(string)
      }))
      service_discovery = optional(object({
        ip_preference = optional(string)
      }))
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

