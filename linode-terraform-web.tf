
resource "linode_instance" "web-server" {
        image = "linode/ubuntu18.04"
        label = "Terraform-Web"
        group = "Terraform"
        region = "us-west"
        type = "g6-nanode-1"
        authorized_keys = [ "${var.ssh_fingerprint}" ]
        root_pass = "Pass@w0rd!"

connection {
    user = "root"
    type = "ssh"
    private_key = "${file(var.pvt_key)}"
    timeout = "2m"
}
provisioner "remote-exec" {
  inline = [
    "export PATH=$PATH:/usr/bin",
    # install nginx
    "sudo apt-get update",
    "sudo apt-get -y install nginx"
  ]
}
}
