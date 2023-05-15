Hello World!

This is an example structure of a repo based on a BQ module to create a dataset with a table for dev, text and prod.

To pass the backend config dynamically, leave the backend block empty and run tf init with the -backend-config argument in your CICD pipeline:

$ terraform init -backend-config=backend.hcl

