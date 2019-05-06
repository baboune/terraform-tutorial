
resource "google_compute_instance" "tutorial_instance" {
  name         = "${var.base_name}tutorial-0${count.index}"
  machine_type = "f1-micro"
  project      = "${var.project_name}"
  zone         = "${var.zone}"

  count        = "1"

  tags = ["tutorial", "tf", "deleteme"]

  boot_disk {
    auto_delete = true
    initialize_params {
      image = "gce-uefi-images/ubuntu-1804-lts"
      type  = "pd-standard" 
    }
  }
  
  network_interface {
    subnetwork    = "${data.google_compute_subnetwork.tutoriaL_sub_network.self_link}"
    
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
