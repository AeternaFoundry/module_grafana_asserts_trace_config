variable "asserts_trace_configs" {
  description = <<EOT
Map of asserts_trace_configs, attributes below
Required:
    - data_source_uid
    - default_config
    - name
    - priority
Optional:
    - entity_property_to_trace_label_mapping
    - match (block):
        - op (required)
        - property (required)
        - values (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    data_source_uid                        = string
    default_config                         = bool
    name                                   = string
    priority                               = number
    entity_property_to_trace_label_mapping = optional(map(string))
    match = optional(list(object({
      op       = string
      property = string
      values   = optional(list(string))
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.asserts_trace_configs : (
        v.priority >= 0 && v.priority <= 2147483647
      )
    ])
    error_message = "must be between 0 and 2147483647"
  }
}

