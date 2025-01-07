provider "google" {
  project = "538641708673"
}

resource "google_service_account" "cloud_build_trigger" {
  account_id   = "cloud-build-trigger"
  display_name = "Cloud Build Trigger SA"
}

resource "google_project_iam_binding" "cloud_build_binding" {
  project = "538641708673"
  role    = "roles/cloudbuild.builds.editor"
  members = [
    "serviceAccount:${google_service_account.cloud_build_trigger.email}"
  ]
}

resource "google_cloudbuild_trigger" "build_trigger" {
  name        = "build-on-push-to-master"
  description = "Trigger for master branch pushes"
  
  github {
    name  = "my-cloud-build-trigger"
    push {
      branch = "^master$"
    }
  }
  filename = "cloudbuild.yaml"
}