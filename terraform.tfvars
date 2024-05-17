 synthetic_monitor ={
  status           = "ENABLED"
  name             = "monitor"
  period           = "EVERY_MINUTE"
  uri              = "https://www.one.newrelic.com"
  type             = "SIMPLE"
  locations_public = ["AP_SOUTH_1"]


    name  = "Simple_Synthetic_Monitor"
    value = "some_value"
  

  treat_redirect_as_failure = true
  validation_string         = "success"
  bypass_head_request       = true
  verify_ssl                = true


    key    = "monitor"
    values = ["newrelic"]
  
 }