terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

resource "local_file" "archivos" {
  for_each = toset(var.nombres_archivos)

  filename = each.value
  content  = "Archivo creado automaticamente por Terraform: ${each.value}"
}