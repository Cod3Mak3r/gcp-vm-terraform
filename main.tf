provider "google" {
  project     = var.project_id
  region      = var.region
}

resource "google_compute_instance" "vm_instance" {
  name         = "nubex-vm"
  machine_type = "e2-medium"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Esto habilita una IP pública
    }
  }

  metadata = {
    ssh-keys = "usuario:ssh-rsa AAAAB3N..."
  }
}
