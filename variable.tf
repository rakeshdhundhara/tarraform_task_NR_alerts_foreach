
variable "policy_name" {
  type = string
}
variable "alert" {
  type = map(object({
    key                   = string
    description           = string
    runbook_url           = string
    nrql_query            = string
    operator              = string
    critical_threshold    = number
    critical_duration     = number
    warning_threshold     = number
    warning_duration      = number
    threshold_occurrences = string





  }))
}
