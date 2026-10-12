resource "pagerduty_ruleset" "rulesets" {
  for_each = var.rulesets

  name = each.value.name

  dynamic "team" {
    for_each = each.value.team != null ? [each.value.team] : []
    content {
      id = team.value.id
    }
  }
}

