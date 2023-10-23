variable "project" {
    default = "GDV"
    description = "The default project where tickets will be created/updated"
}

locals {
  statuses = {
    todo = 11200
    in_progress = 11201
    completed = 11202
  }
}