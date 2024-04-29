resource "aws_key_pair" "main_auth" {
  key_name   = var.key_name
  public_key = file("~/.ssh/mainkey.pub")
}