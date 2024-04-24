

resource "newrelic_alert_policy" "rakesh_nrql" {
  name = var.policy_name
}

resource "newrelic_nrql_alert_condition" "rkcondition_tarraform" {
  for_each    = var.alert
  policy_id   = newrelic_alert_policy.rakesh_nrql.id
  name        = each.value.key
  description = each.value.description
  runbook_url = each.value.runbook_url

  nrql {
    query = each.value.nrql_query
  }

  critical {
    operator              = each.value.operator
    threshold             = each.value.critical_threshold
    threshold_duration    = each.value.critical_duration
    threshold_occurrences = each.value.threshold_occurrences
  }

  warning {
    operator              = each.value.operator
    threshold             = each.value.warning_threshold
    threshold_duration    = each.value.warning_duration
    threshold_occurrences = each.value.threshold_occurrences
  }
}
