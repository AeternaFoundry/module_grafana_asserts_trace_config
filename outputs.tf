output "asserts_trace_configs_id" {
  description = "Map of id values across all asserts_trace_configs, keyed the same as var.asserts_trace_configs except keys with no id are omitted"
  value       = { for k, v in grafana_asserts_trace_config.asserts_trace_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "asserts_trace_configs_data_source_uid" {
  description = "Map of data_source_uid values across all asserts_trace_configs, keyed the same as var.asserts_trace_configs except keys with no data_source_uid are omitted"
  value       = { for k, v in grafana_asserts_trace_config.asserts_trace_configs : k => v.data_source_uid if v.data_source_uid != null && length(v.data_source_uid) > 0 }
}
output "asserts_trace_configs_default_config" {
  description = "Map of default_config values across all asserts_trace_configs, keyed the same as var.asserts_trace_configs except keys with no default_config are omitted"
  value       = { for k, v in grafana_asserts_trace_config.asserts_trace_configs : k => v.default_config if v.default_config != null }
}
output "asserts_trace_configs_entity_property_to_trace_label_mapping" {
  description = "Map of entity_property_to_trace_label_mapping values across all asserts_trace_configs, keyed the same as var.asserts_trace_configs except keys with no entity_property_to_trace_label_mapping are omitted"
  value       = { for k, v in grafana_asserts_trace_config.asserts_trace_configs : k => v.entity_property_to_trace_label_mapping if v.entity_property_to_trace_label_mapping != null && length(v.entity_property_to_trace_label_mapping) > 0 }
}
output "asserts_trace_configs_match" {
  description = "Map of match values across all asserts_trace_configs, keyed the same as var.asserts_trace_configs except keys with no match are omitted"
  value       = { for k, v in grafana_asserts_trace_config.asserts_trace_configs : k => v.match if v.match != null && length(v.match) > 0 }
}
output "asserts_trace_configs_name" {
  description = "Map of name values across all asserts_trace_configs, keyed the same as var.asserts_trace_configs except keys with no name are omitted"
  value       = { for k, v in grafana_asserts_trace_config.asserts_trace_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "asserts_trace_configs_priority" {
  description = "Map of priority values across all asserts_trace_configs, keyed the same as var.asserts_trace_configs except keys with no priority are omitted"
  value       = { for k, v in grafana_asserts_trace_config.asserts_trace_configs : k => v.priority if v.priority != null }
}

