module "flappy" {
  source = "./modules/flappy"
  text = "${var.text}"
  url = "${var.url}"
}
