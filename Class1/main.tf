resource "aws_iam_user" "firstuser" {
  name = "firstuser"
}
resource "aws_iam_group" "multigroup" {
    for_each = toset ([
        "sales",
        "marketing",
    ])
  name = "each.key"

}