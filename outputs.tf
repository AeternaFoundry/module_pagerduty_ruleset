output "rulesets_id" {
  description = "Map of id values across all rulesets, keyed the same as var.rulesets"
  value       = { for k, v in pagerduty_ruleset.rulesets : k => v.id }
}
output "rulesets_name" {
  description = "Map of name values across all rulesets, keyed the same as var.rulesets"
  value       = { for k, v in pagerduty_ruleset.rulesets : k => v.name }
}
output "rulesets_routing_keys" {
  description = "Map of routing_keys values across all rulesets, keyed the same as var.rulesets"
  value       = { for k, v in pagerduty_ruleset.rulesets : k => v.routing_keys }
}
output "rulesets_team" {
  description = "Map of team values across all rulesets, keyed the same as var.rulesets"
  value       = { for k, v in pagerduty_ruleset.rulesets : k => one(v.team) }
}
output "rulesets_type" {
  description = "Map of type values across all rulesets, keyed the same as var.rulesets"
  value       = { for k, v in pagerduty_ruleset.rulesets : k => v.type }
}

