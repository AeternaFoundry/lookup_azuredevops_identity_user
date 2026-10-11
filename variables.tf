variable "identity_user_lookup" {
  description = <<EOT
Map of identity_user_lookup, attributes below
Required:
    - name
Optional:
    - search_filter
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    name          = string
    search_filter = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.identity_user_lookup : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.identity_user_lookup : (
        v.search_filter == null || (contains(["AccountName", "DisplayName", "MailAddress", "General"], v.search_filter))
      )
    ])
    error_message = "must be one of: \"AccountName\", \"DisplayName\", \"MailAddress\", \"General\""
  }
}

