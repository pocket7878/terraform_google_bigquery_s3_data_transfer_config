resource "google_bigquery_data_transfer_config" "transfer_config" {
  display_name = "${var.display_name}"
  destination_dataset_id = "${var.destination_dataset_id}"
  data_source_id = "amazon_s3"
  schedule = "${var.schedule}"
  params = {
    field_delimiter = "${var.field_delimiter}"
    max_bad_records = "${var.max_bad_records}"
    access_key_id = "${var.access_key_id}"
    secret_access_key = "${var.secret_access_key}"
    skip_leading_rows = "${var.skip_leading_rows}"
    destination_table_name_template = "${var.destination_table_name_template}"
    data_path = "${var.s3_url}"
    file_format = "${var.file_format}"
  }
  data_refresh_window_days = "${var.data_refresh_window_days}"
  location = "${var.location}"
  project = var.project
}