resource "grafana_asserts_trace_config" "asserts_trace_configs" {
  for_each = var.asserts_trace_configs

  data_source_uid                        = each.value.data_source_uid
  default_config                         = each.value.default_config
  name                                   = each.value.name
  priority                               = each.value.priority
  entity_property_to_trace_label_mapping = each.value.entity_property_to_trace_label_mapping

  dynamic "match" {
    for_each = each.value.match != null ? each.value.match : []
    content {
      op       = match.value.op
      property = match.value.property
      values   = match.value.values
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

