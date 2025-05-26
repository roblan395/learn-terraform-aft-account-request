module "sandbox1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sebastianleonardo299+aft02@gmail.com"
    AccountName               = "sandbox-ST02"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "sebastianleonardo299+aft@gmail.com"
    SSOUserFirstName          = "Sandbox6" 
    SSOUserLastName           = "AFT6"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Batch account creation 2/2"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}


module "sandbox2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rlanda+wptest@morrisopazo.com"
    AccountName               = "sandbox-ST02"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "rlanda+wp@morrisopazo.com"
    SSOUserFirstName          = "Sandbox7" 
    SSOUserLastName           = "AFT7"
  }

  account_tags = {
    "Learn Tutorial" = "AFT",
    "Environment"    = "Sandbox"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Batch account creation 2/2"
  }

  account_customizations_name = "sandbox"
}