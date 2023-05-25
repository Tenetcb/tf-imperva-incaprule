# incap-rule

Terraform module permit to manage incapsula rule inside website on Imperva

## Usage

```shell
module "incap-rule" {
  source = "../.."

  rules = [
    {
      site_id = "20001111"
      name = "Example incap rule alert"
      action = "RULE_ACTION_ALERT"
      filter = "Full-URL == \"/someurl\""
      enabled = true
    },
    {
      site_id = "20001111"
      name = "Example incap rule block ip"
      action = "RULE_ACTION_BLOCK_IP"
      filter = "Full-URL == \"/someurl\""
      enabled = true  
    }
  ]
  }
}
```

<!-- BEGIN_TF_DOCS -->

## Providers

| Name | Version |
|------|---------|
| <a name="provider_incapsula"></a> [incapsula](#provider_incapsula) | 3.17.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_rules"></a> [rules](#input_rules) | The list of rules | <pre>list(object({<br>    site_id                 = string<br>    name                    = string<br>    action                  = string<br>    filter                  = string<br>    enabled                 = optional(bool)<br>    response_code           = optional(number)<br>    add_missing             = optional(string)<br>    rewrite_existing        = optional(string)<br>    from                    = optional(string)<br>    to                      = optional(string)<br>    rewrite_name            = optional(string)<br>    dc_id                   = optional(string)<br>    port_forwarding_context = optional(string)<br>    port_forwarding_value   = optional(string)<br>    rate_context            = optional(string)<br>    rate_interval           = optional(number)<br>    error_type              = optional(string)<br>    error_response_format   = optional(string)<br>    error_response_data     = optional(string)<br>    multiple_deletions      = optional(string)<br>    # overrideWafAction       = optional(string)<br>    # overrideWafRule         = optional(string)<br>  }))</pre> | `[]` | no |

## Outputs

No outputs.

<!-- END_TF_DOCS -->