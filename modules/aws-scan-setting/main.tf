terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

resource "aws_iam_role" "risken" {
  name               = var.risken_role_name
  assume_role_policy = data.aws_iam_policy_document.risken.json
}

data "aws_iam_policy_document" "risken" {
  statement {
    actions = [
      "sts:AssumeRole",
    ]
    principals {
      type        = "AWS"
      identifiers = [var.risken_aws_arn]
    }
    condition {
      test     = "StringEquals"
      variable = "sts:ExternalId"
      values   = [var.risken_external_id]
    }
  }
}

data "aws_iam_policy_document" "risken_additional_policy" {
  statement {
    actions = [
      "ses:DescribeActiveReceiptRuleSet",
      "athena:GetWorkGroup",
      "logs:DescribeLogGroups",
      "logs:DescribeMetricFilters",
      "elastictranscoder:ListPipelines",
      "elasticfilesystem:DescribeFileSystems",
      "servicequotas:ListServiceQuotas",
    ]
    resources = ["*"]
  }
}

resource "aws_iam_policy" "risken_additional_policy" {
  name        = var.risken_policy_name
  description = "A policy for RISKEN"
  policy      = data.aws_iam_policy_document.risken_additional_policy.json
}

resource "aws_iam_role_policy_attachment" "risken_additional_policy" {
  policy_arn = aws_iam_policy.risken_additional_policy.arn
  role       = aws_iam_role.risken.name
}
resource "aws_iam_role_policy_attachment" "security_audit" {
  policy_arn = "arn:aws:iam::aws:policy/SecurityAudit"
  role       = aws_iam_role.risken.name
}
