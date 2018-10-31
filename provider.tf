variable "do_token" {}
variable "pub_key" {}
variable "pvt_key" {}
variable "authorized_key" {}
variable "root_password" {}

provider "linode" {
  token = "${var.do_token}"
}
