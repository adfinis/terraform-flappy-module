locals {
    text = "${var.text}"
    url  = "${var.url}"
}

resource "null_resource" "flappy" {
  provisioner "local-exec" {
    command = "modules/flappy/files/flappy.sh '${var.url}' '${var.text}'"
  }
  triggers = {
    text  = "${var.text}"
  }
}
