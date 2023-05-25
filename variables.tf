variable "rules" {
  type = list(object({
    site_id                 = string
    name                    = string
    action                  = string
    filter                  = string
    enabled                 = optional(bool)
    response_code           = optional(number)
    add_missing             = optional(string)
    rewrite_existing        = optional(string)
    from                    = optional(string)
    to                      = optional(string)
    rewrite_name            = optional(string)
    dc_id                   = optional(string)
    port_forwarding_context = optional(string)
    port_forwarding_value   = optional(string)
    rate_context            = optional(string)
    rate_interval           = optional(number)
    error_type              = optional(string)
    error_response_format   = optional(string)
    error_response_data     = optional(string)
    multiple_deletions      = optional(string)
    # overrideWafAction       = optional(string)
    # overrideWafRule         = optional(string)
  }))
  default     = []
  description = "The list of rules"
}