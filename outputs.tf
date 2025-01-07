output "trigger_id" {
  value = google_cloudbuild_trigger.build_trigger.trigger_id
}

output "trigger_name" {
  value = google_cloudbuild_trigger.build_trigger.name
}
