
#NOTE: This is passed in via the SHORELINE_URL env var.
#        SHORELINE_TOKEN is also required.
#variable "shoreline_url" {
#  type        = string
#  #default     = "https://test.us.api.shoreline-test4.io"
#  description = "The API URL for the shoreline service."
#}

variable "check_interval" {
  type        = number
  description = "Frequency in seconds to check alarms."
  default     = 10
}

variable "resource_query" {
  type        = string
  description = "The set of hosts/pods/containers monitored and affected by this module."
}

variable "filepath" {
  type        = string
  description = "file path to check"
}


