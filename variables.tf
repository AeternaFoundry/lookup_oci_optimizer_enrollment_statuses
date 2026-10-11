variable "optimizer_enrollment_statuses_lookup" {
  description = <<EOT
Map of optimizer_enrollment_statuses_lookup, attributes below
Required:
    - compartment_id
Optional:
    - state
    - status
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    state          = optional(string)
    status         = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

