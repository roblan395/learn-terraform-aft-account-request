module "test_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rlanda+wp123@morrisopazo.com"
    AccountName               = "test-account123"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "rlanda+wp123@morrisopazo.com"
    SSOUserFirstName          = "Test"
    SSOUserLastName           = "User"
  }

  account_tags = {
    "Environment" = "Test",
    "Owner"       = "rlanda"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Test account with custom resources"
  }

  account_customizations_name = "test"
}