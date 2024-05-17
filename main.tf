resource "newrelic_synthetics_monitor" "synthetic_monitor" {
  status           = var.synthetic_monitor.status
  name             = var.synthetic_monitor.name
  period           = var.synthetic_monitor.period
  uri              = var.synthetic_monitor.uri
  type             = var.synthetic_monitor.type
  locations_public = var.synthetic_monitor.locations_public

  custom_header  {
    name  = var.synthetic_monitor.name
    value = var.synthetic_monitor.value
  }

  treat_redirect_as_failure = var.synthetic_monitor.treat_redirect_as_failure
  validation_string         = var.synthetic_monitor.validation_string
  bypass_head_request       = var.synthetic_monitor.bypass_head_request
  verify_ssl                = var.synthetic_monitor.verify_ssl

  tag {
    key    = var.synthetic_monitor.key
    values = var.synthetic_monitor.values
    
  }
}