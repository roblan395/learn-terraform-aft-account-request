# main.tf
module "sandbox_3" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sebastianleonardo299+aft@gmail.com"
    AccountName               = "sandbox-ST"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "sebastianleonardo299+aft@gmail.com"
    SSOUserFirstName          = "Sandbox5" 
    SSOUserLastName           = "AFT5"
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

module "sandbox_4" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ifcatalan98+aft@gmail.com"
    AccountName               = "sandbox-IC"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "ifcatalan98+aft@gmail.com"
    SSOUserFirstName          = "Sandbox6" 
    SSOUserLastName           = "AFT6"
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