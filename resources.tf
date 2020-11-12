provider "google" {
  project     = var.app_project
  credentials = file(var.gcp_auth_file)
  region      = var.gcp_region_1
  
}

resource "google_compute_instance" "default" {
  name = var.gcp_name
  machine_type = var.gcp_machine_type
  #zone = "us-central1-b"
  zone        = var.gcp_zone_1
  boot_disk {
      initialize_params {
          image = var.gcp_machine_image
    }
  }
  network_interface {
      network = var.gcp_network
      access_config {
      // Include this section to give the VM an external ip address
    }
  }
    metadata_startup_script = "sudo apt-get update && sudo apt-get install apache2 -y && echo '<!doctype html><html><body><h1>Getting started with Terraform and Google Cloud Platform (GCP) Part 2: deploying VMs in a private-only single region with a load balancer and unmanaged instance groups</h1></body></html>' | sudo tee /var/www/html/index.html"
    tags = [var.gcp_tags]
}

resource "google_compute_firewall" "http-server" {
  name    = var.gcp_name_http
  network = var.gcp_network

  allow {
    protocol = var.gcp_http_protocols
    ports    = [var.gcp_http_ports]
  }
  source_ranges = [var.gcp_source_ranges]
  target_tags   = [var.gcp_target_tags]
}
output "ip" {
  value = "${google_compute_instance.default.network_interface.0.access_config.0.nat_ip}"
}
