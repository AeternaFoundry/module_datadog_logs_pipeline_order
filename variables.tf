variable "logs_pipeline_orders" {
  description = <<EOT
Map of logs_pipeline_orders, attributes below
Required:
    - name
    - pipelines
EOT

  type = map(object({
    name      = string
    pipelines = list(string)
  }))
}

