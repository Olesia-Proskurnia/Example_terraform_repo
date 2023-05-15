provider "google" {
  project = var.project_id
  region  = var.region
}

provider "google-beta" {
  project = var.project_id
  region  = var.region
}

variable "project_name" {
  type        = string
  description = "The name of the project to set up"
}

variable "project_id" {
  type        = string
  description = "The name of the project to set up"
}

variable "org_id" {
  type        = string
  description = "The name of the google cloud org"
}

variable "environment" {
  type        = string
  description = "The environment being set up"
}

variable "region" {
  type        = string
  description = "The region resources will be built"
}


locals {
  resource_prexfix = "${lower(var.environment)}${lower(var.project_id)}"
  env              = lower(var.environment)

  tags = {
    environment = var.environment
    ProjectName = var.project_id
    CreatedBy   = "Terraform-setup"
    Owner       = "Olesia"
  }
}