variable "nombres_archivos" {
  description = "Lista de archivos a crear"
  type        = list(string)

  default = [
    "servidor-web.txt",
    "servidor-db.txt",
    "servidor-backup.txt",
    "servidor-monitor.txt"
  ]
}