output "application_public_ip" {
  value = module.web.public_ip
}

output "application_db_user" {
  value = module.web.application_user_name
}

output "application_schema" {
  value = module.web.app_schema_name
}

output "appplication_db_password" {
  value = var.app_password
}

output "mds_instance_ip" {
  value = module.mds-instance.private_ip
}

output "ssh_private_key" {
  value = local.private_key_to_show
}
