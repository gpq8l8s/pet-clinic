resource "google_sql_database" "db_customers" {
    name     = "db-customers"
    instance = google_sql_database_instance.instance.name
}
resource "google_sql_database" "db_vets" {
    name     = "db_vets"
    instance = google_sql_database_instance.instance.name
}
resource "google_sql_database" "db_visits" {
    name     = "db_visits"
    instance = google_sql_database_instance.instance.name
}

# See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
resource "google_sql_database_instance" "instance" {
    name             = "db-instance-pet-clinic"
    region           = "europe-west1"
    database_version = "MYSQL_5_7"
    settings {
        tier = "db-n1-standard-8"
    }

    deletion_protection  = "true"
}