module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rlanda+afttest1@morrisopazo.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Workshop Morris"
    SSOUserEmail              = "rlanda+afttest1@morrisopazo.com"
    SSOUserFirstName          = "Sandbox2"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
