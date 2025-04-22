#This solution, non-production-ready template describes AWS Codepipeline based CICD Pipeline for terraform code deployment.
#© 2023 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.
#This AWS Content is provided subject to the terms of the AWS Customer Agreement available at
#http://aws.amazon.com/agreement or other written agreement between Customer and either
#Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.

output "id" {
  description = "The name (if imported via name) or ARN (if created via Terraform or imported via ARN) of the CodeBuild project"
  value       = { for k, v in aws_codebuild_project.terraform_codebuild_project : k => v.id }
}

output "name" {
  description = "The name of the CodeBuild project"
  value       = { for k, v in aws_codebuild_project.terraform_codebuild_project : k => v.name }
}

output "arn" {
  description = "The ARN of the CodeBuild project"
  value       = { for k, v in aws_codebuild_project.terraform_codebuild_project : k => v.arn }
}

output "badge_url" {
  description = "The URL of the build badge when badge_enabled is enabled"
  value       = { for k, v in aws_codebuild_project.terraform_codebuild_project : k => v.badge_url }
}

output "service_role" {
  description = "The ARN of the IAM service role applied to this project"
  value       = aws_iam_role.terraform_codebuild_role.arn
}

