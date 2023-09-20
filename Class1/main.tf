resource "aws_iam_user" "firstuser" {
  name = "firstuser"
}

resource "aws_iam_group" "multigroup" {
  for_each = toset([
    "sales",
    "jobs",
    "labs"
  ])

  name = each.key
}


resource "aws_key_pair" "first" {
  key_name   = "first-key"
  public_key = file ("~/.ssh/id_rsa.pub")
}

resource "aws_s3_bucket" "example" {
  bucket = "my-"
}