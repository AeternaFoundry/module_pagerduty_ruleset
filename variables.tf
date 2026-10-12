variable "rulesets" {
  description = <<EOT
Map of rulesets, attributes below
Required:
    - name
Optional:
    - team (block):
        - id (required)
EOT

  type = map(object({
    name = string
    team = optional(object({
      id = string
    }))
  }))
}

