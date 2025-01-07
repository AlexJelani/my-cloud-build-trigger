output "project_id" {
  value = var.project_id
}

output "github_token" {
  value     = var.github_token
  sensitive = true
}

output "service_account_email" {
  value = google_service_account.terraform-sa.email
}

output "trigger_id" {
  value = google_cloudbuild_trigger.build_trigger.trigger_id
}

output "trigger_name" {
  value = google_cloudbuild_trigger.build_trigger.name
}
