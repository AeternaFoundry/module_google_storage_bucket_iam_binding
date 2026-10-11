variable "storage_bucket_iam_bindings" {
  description = <<EOT
Map of storage_bucket_iam_bindings, attributes below
Required:
    - bucket
    - members
    - role
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
    - timeouts (block):
        - create (optional)
EOT

  type = map(object({
    bucket  = string
    members = set(string)
    role    = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
    timeouts = optional(object({
      create = optional(string)
    }))
  }))
}

