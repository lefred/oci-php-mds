output "id" {
  value = oci_core_instance.Application.*.id
}

output "public_ip" {
  value = join(", ", oci_core_instance.Application.*.public_ip)
}

output "application_user_name" {
  value = var.app_name
}

output "application_schema_name" {
  value = var.app_schema
}

output "application_host_name" {
  value = oci_core_instance.Application.*.display_name
}
