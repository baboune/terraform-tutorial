#
# Definition of the Network infrastructure
#

# See https://www.terraform.io/docs/providers/google/d/datasource_compute_network.html
data "google_compute_network" "tutoriaL_network" {
  name    = ""
  project = "${var.project_name}"
}

# See https://www.terraform.io/docs/providers/google/d/datasource_compute_subnetwork.html
data "google_compute_subnetwork" "tutoriaL_sub_network" {
  name    = ""
  project = ""
}
