
resource "aws_iam_user" "lb" {
  name  = "iamuser.${count.index}"
  count = 3
  path  = "/system/"
}

output "iam_arns" {
  value = aws_iam_user.lb[*].arn
}

output "iam_names" {
  value = aws_iam_user.lb[*].name
}

output "zip_map" {
  value = zipmap(aws_iam_user.lb[*].name, aws_iam_user.lb[*].arn)
}