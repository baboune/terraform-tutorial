#
# Main file that contains general project level definition
#

#
# Which cloud provider to use
#
provider "google" {
  project   = "${var.project_name}"
  region    = "${var.region}"
  version   = "2.1"  # <-- Fix version of the GCP plugin
}




