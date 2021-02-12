# ------------------
# Role, Profile and attachment
# ------------------
resource "aws_iam_role" "this" {
  name                  = var.name != null ? var.name : null
  name_prefix           = var.name_prefix != null ? substr(var.name_prefix, 0, 22) : null
  assume_role_policy    = var.assume_role_policy == "" ? data.aws_iam_policy_document.this.json : var.assume_role_policy
  force_detach_policies = var.force_detach_policies
  path                  = var.path
  description           = var.description
}

resource "aws_iam_instance_profile" "this" {
  depends_on  = [aws_iam_role.this]
  name_prefix = substr(var.name, 0, 22)
  path        = var.path
  role        = aws_iam_role.this.name
}

resource "aws_iam_role_policy_attachment" "this" {
  count      = length(var.policy_arn)
  role       = aws_iam_role.this.name
  policy_arn = var.policy_arn[count.index]
}

