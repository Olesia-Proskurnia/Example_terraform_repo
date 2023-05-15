module "test" {
  source  = "terraform-google-modules/bigquery/google"
  version = "~> 5.4"

  dataset_id                  = "${local.env}_dental_appointments_for_cookie_monsters"
  dataset_name                = "${local.env}_dental_appointments_for_cookie_monsters"
  description                 = "some description"
  project_id                  = var.project_id
  location                    = var.region
  default_table_expiration_ms = 3600000
  encryption_key              = null
  tables = [
    {
      table_id          = "${local.env}_appointments",
      schema            = file("sample_bq_schema.json")
      time_partitioning = null # {
      #   type                     = "DAY",
      #   field                    = null,
      #   require_partition_filter = false,
      #   expiration_ms            = null,
      # },
      range_partitioning = null,
      expiration_time    = null,
      clustering         = [] #["fullVisitorId", "visitId"],
      labels = {
        env      = local.env
        billable = "true"
        owner    = "chief_cookie_scientist"
      },
    }
  ]

  dataset_labels = {
    env      = local.env
    billable = "true"
  }
}