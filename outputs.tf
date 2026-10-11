output "logs_pipeline_orders_id" {
  description = "Map of id values across all logs_pipeline_orders, keyed the same as var.logs_pipeline_orders except keys with no id are omitted"
  value       = { for k, v in datadog_logs_pipeline_order.logs_pipeline_orders : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logs_pipeline_orders_name" {
  description = "Map of name values across all logs_pipeline_orders, keyed the same as var.logs_pipeline_orders except keys with no name are omitted"
  value       = { for k, v in datadog_logs_pipeline_order.logs_pipeline_orders : k => v.name if v.name != null && length(v.name) > 0 }
}
output "logs_pipeline_orders_pipelines" {
  description = "Map of pipelines values across all logs_pipeline_orders, keyed the same as var.logs_pipeline_orders except keys with no pipelines are omitted"
  value       = { for k, v in datadog_logs_pipeline_order.logs_pipeline_orders : k => v.pipelines if v.pipelines != null && length(v.pipelines) > 0 }
}

