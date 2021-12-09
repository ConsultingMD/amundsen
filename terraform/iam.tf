resource "aws_iam_role" "amundsen" {
  assume_role_policy = "${data.aws_ssm_parameter.assume_role_policy.value}"
  name               = "amundsen"
  description        = "amundsen"
}

data "aws_ssm_parameter" "assume_role_policy" {
  name = "/policy/eks-cluster-assume-role-policy-document"
}
