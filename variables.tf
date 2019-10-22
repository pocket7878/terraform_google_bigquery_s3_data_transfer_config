variable "display_name" {
    type = "string"
    description = "The user specified display name for the transfer config."
}

variable "destination_dataset_id" {
    type = "string"
    description = "The BigQuery target dataset id."
}

variable "destination_table_name_template" {
    type = "string"
    description = "BQ Transfer Destination Table Name Template"
}

variable "s3_url" {
    type = "string"
    description = "BQ Transfer Source S3 URL"
}

variable "file_format" {
    type = "string"
    description = "BQ Transfer File Format"
}

variable "data_refresh_window_days" {
    type = number
    description = " (Optional) The number of days to look back to automatically refresh the data."
    default = 0
}

variable "location" {
    type = "string"
    description = "(Optional) The geographic location where the transfer config should reside."
    default = "US"
}

variable "project" {
    type = "string"
    description = "(Optional) The ID of the project in which the resource belongs."
    default = null
}

variable "disabled" {
    type = bool
    description = "(Optional) When set to true, no runs are scheduled for a given transfer."
    default = null
}

variable "schedule" {
    type = "string"
    description = "(Optional) Data transfer schedule."
    default = ""
}

variable "field_delimiter" {
    type = "string"
    description = "BQ Transfer Field delimiter"
    default = ","
}

variable "max_bad_records" {
    type = "string"
    description = "BQ Transfer Max bad records"
    default = "0"
}

variable "skip_leading_rows" {
    type = "string"
    description = "BQ Transfer Skip Leaing Rows"
    default = "0"
}

variable "access_key_id" {
    type = "string"
    description = "AWS Access Key ID"
}

variable "secret_access_key" {
    type = "string"  
    description = "AWS Secret Access Key"
}

