provider "google" {
  project   = "${var.project_name}"
  region    = "${var.region}"
  version   = "2.1"
}
