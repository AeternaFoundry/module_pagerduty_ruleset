output "rulesets_id" {
  description = "Map of id values across all rulesets, keyed the same as var.rulesets except keys with no id are omitted"
  value       = { for k, v in pagerduty_ruleset.rulesets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rulesets_name" {
  description = "Map of name values across all rulesets, keyed the same as var.rulesets except keys with no name are omitted"
  value       = { for k, v in pagerduty_ruleset.rulesets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "rulesets_routing_keys" {
  description = "Map of routing_keys values across all rulesets, keyed the same as var.rulesets except keys with no routing_keys are omitted"
  value       = { for k, v in pagerduty_ruleset.rulesets : k => v.routing_keys if v.routing_keys != null && length(v.routing_keys) > 0 }
}
output "rulesets_team" {
  description = "Map of team values across all rulesets, keyed the same as var.rulesets except keys with no team are omitted"
  value       = { for k, v in pagerduty_ruleset.rulesets : k => one(v.team) if v.team != null && length(v.team) > 0 }
}
output "rulesets_type" {
  description = "Map of type values across all rulesets, keyed the same as var.rulesets except keys with no type are omitted"
  value       = { for k, v in pagerduty_ruleset.rulesets : k => v.type if v.type != null && length(v.type) > 0 }
}

