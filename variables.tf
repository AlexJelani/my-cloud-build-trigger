variable "project_id" {
  description = "GCP Project ID"
  default     = "my-cloud-build-trigger"
}

variable "service_account" {
  description = "Service account for Cloud Build trigger"
  default     = "projects/my-cloud-build-trigger/serviceAccounts/terraform-sa@my-cloud-build-trigger.iam.gserviceaccount.com"
  sensitive   = true
}