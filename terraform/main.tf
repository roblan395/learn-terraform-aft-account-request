module "dormant_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rlanda-de1@morrisopazo.com"
    AccountName               = "lab-account-2"
    ManagedOrganizationalUnit = "Workshop Serverless DE"
    # Deja estos campos vacíos para evitar SSO automático
    SSOUserEmail              = ""
    SSOUserFirstName          = ""
    SSOUserLastName           = ""
  }

  account_tags = {
    "Environment"    = "Dormant",
    "Owner"          = "rlanda",
    "AccountStatus"  = "PendingActivation",  # Importante para el filtrado
    "ActivationType" = "OTP"
  }

  change_management_parameters = {
    change_requested_by = "OTP Activation System",
    change_reason       = "Dormant account for OTP activation"
  }

  account_customizations_name = "sandbox"
}