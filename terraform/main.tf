module "test_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "lab-account-1@test.com"
    AccountName               = "lab-account-1"
    ManagedOrganizationalUnit = "Workshop Serverless DE"
    SSOUserEmail              = "lab-account-1@test.com"
    SSOUserFirstName          = "Test"
    SSOUserLastName           = "lab-account-1"
  }

  account_tags = {
    "Environment" = "Test",
    "Owner"       = "rlanda"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Test account with custom resources"
  }

  account_customizations_name = "sandbox"
}