#
# Definition of the Compute infrastructure
#

#
# See https://www.terraform.io/docs/providers/google/r/compute_instance.html
# 
resource "google_compute_instance" "tutorial_instance" {
  name         = "${var.base_name}tutorial-0${count.index}"
  machine_type = "<specify my value>"
  project      = "${var.project_name}"
  zone         = "${var.zone}"

  # Try to increase the count
  count        = "1"

  tags = ["tutorial", "tf", "deleteme"]

  boot_disk {
    auto_delete = true
    initialize_params {
      image = ""
      type  = "pd-standard" 
    }
  }
  
  network_interface {
    subnetwork    = "<Use the reference from the network data object>"
    
    access_config {
    }
  }

  metadata = {
    tf = "tutorial"
  }
  # Startup
  metadata_startup_script = ""

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-rw"]
  }
   allow_stopping_for_update = true
}
