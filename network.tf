# See https://www.terraform.io/docs/providers/google/d/datasource_compute_network.html
data "google_compute_network" "tutoriaL_network" {
  name    = ""
  project = "${var.project_name}"
}

data "google_compute_subnetwork" "tutoriaL_sub_network" {
  name    = ""
  project = ""
}
