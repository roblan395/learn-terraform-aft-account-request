module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rlanda+afttest2@morrisopazo.com"
    AccountName               = "sandbox-aft2"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "rlanda+afttest2@morrisopazo.com"
    SSOUserFirstName          = "Sandbox2"
    SSOUserLastName           = "AFT2"
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
