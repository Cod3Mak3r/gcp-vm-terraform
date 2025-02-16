variable "project_id" {
  description = "ID del proyecto en GCP"
  type        = string
}

variable "region" {
  description = "Región de despliegue"
  default     = "us-central1"
}

variable "zone" {
  description = "Zona de despliegue"
  default     = "us-central1-a"
}
