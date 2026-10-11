resource "datadog_logs_pipeline_order" "logs_pipeline_orders" {
  for_each = var.logs_pipeline_orders

  name      = each.value.name
  pipelines = each.value.pipelines
}

