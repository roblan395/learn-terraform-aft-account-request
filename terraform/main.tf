module "sandbox1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rlanda+1@morrisopazo.com"
    AccountName               = "sandbox-aft1"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "rlanda+wp@morrisopazo.com"
    SSOUserFirstName          = "RL1"
    SSOUserLastName           = "AFT"
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

module "sandbox2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sebastianleonardo299+aft03@gmail.com"
    AccountName               = "sandbox-ST03"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "sebastianleonardo299+aft@gmail.com"
    SSOUserFirstName          = "Sandbox8" 
    SSOUserLastName           = "AFT8"
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