
policy_name = "tarraform_task2"
alert = {
  alerts_key1 = {
    key                   = "condition1"
    description           = "Description for condition 1"
    runbook_url           = "https://example.com/runbook1"
    nrql_query            = "SELECT average(cpuPercent) FROM SystemSample FACET entityName"
    operator              = "above"
    critical_threshold    = 30
    critical_duration     = 600
    warning_threshold     = 20
    warning_duration      = 600
    threshold_occurrences = "All"
  }
  alerts_key2 = {
    key                   = "condition2"
    description           = "Description for condition 2"
    runbook_url           = "https://example.com/runbook2"
    nrql_query            = "SELECT average(cpuPercent) FROM SystemSample FACET entityName,agentName"
    operator              = "below"
    critical_threshold    = 60
    critical_duration     = 600
    warning_threshold     = 20
    warning_duration      = 300
    threshold_occurrences = "All"
  }

}
