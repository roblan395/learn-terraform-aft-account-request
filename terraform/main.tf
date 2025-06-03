module "dormant_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "temp-admin4@yourdomain.com"  # Email real
    AccountName               = "lab-otp3",
    ManagedOrganizationalUnit = "Workshop Serverless DE",
    # Usa valores temporales (no vacíos)
    SSOUserEmail              = "temp-admin4@yourdomain.com",  # Temporal
    SSOUserFirstName          = "Temp",
    SSOUserLastName           = "Admin"
  }

  account_tags = {
    "Environment"    = "Dormant",
    "AccountStatus"  = "PendingOTP",  # Tag clave para filtrar
    "ActivationType" = "OTP"
  }

  change_management_parameters = {
    change_requested_by = "OTP System",
    change_reason       = "Cuenta dormida para activación por OTP"
  }

  account_customizations_name = "sandbox"
}