resource "incapsula_incap_rule" "this" {
  count = length(var.rules)

  site_id                 = var.rules[count.index].site_id
  name                    = var.rules[count.index].name
  action                  = var.rules[count.index].action
  filter                  = var.rules[count.index].filter
  enabled                 = var.rules[count.index].enabled
  response_code           = var.rules[count.index].response_code
  add_missing             = var.rules[count.index].add_missing
  rewrite_existing        = var.rules[count.index].rewrite_existing
  from                    = var.rules[count.index].from
  to                      = var.rules[count.index].to
  rewrite_name            = var.rules[count.index].rewrite_name
  dc_id                   = var.rules[count.index].dc_id
  port_forwarding_context = var.rules[count.index].port_forwarding_context
  port_forwarding_value   = var.rules[count.index].port_forwarding_value
  rate_context            = var.rules[count.index].rate_context
  error_type              = var.rules[count.index].error_type
  error_response_format   = var.rules[count.index].error_response_format
  error_response_data     = var.rules[count.index].error_response_data
  multiple_deletions      = var.rules[count.index].multiple_deletions
  rate_interval           = var.rules[count.index].rate_interval
  # overrideWafAction       = var.rules[count.index].overrideWafAction
  # overrideWafRule         = var.rules[count.index].overrideWafRule
}
