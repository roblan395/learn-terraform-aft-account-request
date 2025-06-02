module "test_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "stibaquira+wp@morris-labs.com"
    AccountName               = "test-account123"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "stibaquira+wp@morris-labs.com"
    SSOUserFirstName          = "ST"
    SSOUserLastName           = "User"
  }

  account_tags = {
    "Environment" = "Sandbox",
    "Owner"       = "rlanda"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Test account with custom resources"
  }

  account_customizations_name = "sandbox"
}