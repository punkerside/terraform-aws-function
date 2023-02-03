resource "random_string" "main" {
  length  = 9
  special = false
  upper   = false
}

data "archive_file" "main" {
  type        = "zip"
  source_file = "${path.module}/app/app.py"
  output_path = "${path.module}/app.zip"
}

module "main" {
  source = "../../"
  name   = random_string.main.result

  depends_on = [
    data.archive_file.main
  ]
}