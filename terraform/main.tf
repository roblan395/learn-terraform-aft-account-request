# main.tf
module "sandbox_1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rlanda+afttest4@morrisopazo.com"
    AccountName               = "sandbox-aft4"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "rlanda+afttest4@morrisopazo.com"
    SSOUserFirstName          = "Sandbox4" 
    SSOUserLastName           = "AFT4"
  }

  account_tags = {
    "Learn Tutorial" = "AFT",
    "Environment"    = "Sandbox"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Batch account creation 1/2"
  }

  account_customizations_name = "sandbox"
}

module "sandbox_2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rlanda+afttest5@morrisopazo.com"
    AccountName               = "sandbox-aft5"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "rlanda+afttest5@morrisopazo.com"
    SSOUserFirstName          = "Sandbox5" 
    SSOUserLastName           = "AFT5"
  }

  account_tags = {
    "Learn Tutorial" = "AFT",
    "Environment"    = "Sandbox",
    "Owner"          = "Team-DevOps"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Batch account creation 2/2"
  }

  account_customizations_name = "sandbox"
}