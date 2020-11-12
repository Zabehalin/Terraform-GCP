# GCP key
variable "gcp_auth_file" {
  type = string
  description = "lib/project-teraform.json"
}

# GCP name
variable "gcp_name" {
  type = string
  description = "http-server"
}

# GCP project
variable "app_project" {
  type = string
  description = "project-teraform-295313"
}

# GCP region
variable "gcp_region_1" {
  type = string
  description = "us-central1"
}

# GCP zone
variable "gcp_zone_1" {
  type = string
  description = "us-central1-a"
}

# GCP machine_type
variable "gcp_machine_type" {
  type = string
  description = "e2-medium"
}

# GCP machine_image
variable "gcp_machine_image" {
  type = string
  description = "ubuntu-os-cloud/ubuntu-1804-lts"
}

# GCP name http 
variable "gcp_name_http" {
  type = string
  description = "http-terraform-apache2"
}

# GCP network 
variable "gcp_network" {
  type = string
  description = "default"
}

# GCP http port 
variable "gcp_http_ports" {
  type = string
  description = "80"
}

# GCP http protocols 
variable "gcp_http_protocols" {
  type = string
  description = "tcp"
}

# GCP source_ranges 
variable "gcp_source_ranges" {
  type = string
  description = "0.0.0.0/0"
}

# GCP target_tags
variable "gcp_target_tags" {
  type = string
  description = "http-server"
}

# GCP tags
variable "gcp_tags" {
  type = string
  description = "http-server"
}