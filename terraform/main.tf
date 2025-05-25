module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rlanda+afttest3@morrisopazo.com"
    AccountName               = "sandbox-aft3"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "rlanda+afttest3@morrisopazo.com"
    SSOUserFirstName          = "Sandbox3" 
    SSOUserLastName           = "AFT3"
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
