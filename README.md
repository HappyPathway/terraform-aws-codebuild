<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.53.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_codebuild_project.terraform_codebuild_project](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project) | resource |
| [aws_iam_role.codebuild](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.codebuild](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_policy_document.assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.codebuild](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assets_bucket_name"></a> [assets\_bucket\_name](#input\_assets\_bucket\_name) | Name of the S3 bucket used to store the deployment artifacts | `string` | `"image-pipeline-assets"` | no |
| <a name="input_build_project_source"></a> [build\_project\_source](#input\_build\_project\_source) | Information about the build output artifact location | `string` | n/a | yes |
| <a name="input_build_projects"></a> [build\_projects](#input\_build\_projects) | List of Names of the CodeBuild projects to be created | <pre>list(object({<br>    name = string,<br>    vars = optional(map(string), {})<br>    environment_variables = optional(list(object({<br>      name  = string<br>      value = string<br>      type  = string<br>    })), [])<br>    buildspec      = optional(string)<br>    project_source = optional(string)<br>  }))</pre> | n/a | yes |
| <a name="input_builder_compute_type"></a> [builder\_compute\_type](#input\_builder\_compute\_type) | Information about the compute resources the build project will use | `string` | n/a | yes |
| <a name="input_builder_image"></a> [builder\_image](#input\_builder\_image) | Docker image to use for the build project | `string` | `"happypathway/aws-codebuild-image-pipeline:latest"` | no |
| <a name="input_builder_image_pull_credentials_type"></a> [builder\_image\_pull\_credentials\_type](#input\_builder\_image\_pull\_credentials\_type) | Type of credentials AWS CodeBuild uses to pull images in your build. | `string` | n/a | yes |
| <a name="input_builder_images"></a> [builder\_images](#input\_builder\_images) | n/a | `map(string)` | n/a | yes |
| <a name="input_builder_type"></a> [builder\_type](#input\_builder\_type) | Type of build environment to use for related builds | `string` | n/a | yes |
| <a name="input_docker_build"></a> [docker\_build](#input\_docker\_build) | n/a | `bool` | `false` | no |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | n/a | <pre>list(object({<br>    name  = string<br>    value = string<br>    type  = string<br>  }))</pre> | `[]` | no |
| <a name="input_kms_key_arn"></a> [kms\_key\_arn](#input\_kms\_key\_arn) | ARN of KMS key for encryption | `string` | n/a | yes |
| <a name="input_packer_config"></a> [packer\_config](#input\_packer\_config) | Name of Packer Config in Repo | `string` | `"build.pkr.hcl"` | no |
| <a name="input_packer_version"></a> [packer\_version](#input\_packer\_version) | Packer CLI Version | `string` | `"1.10.3"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Unique name for this project | `string` | n/a | yes |
| <a name="input_required_packages"></a> [required\_packages](#input\_required\_packages) | n/a | <pre>list(object({<br>    src  = string<br>    dest = string<br>  }))</pre> | `[]` | no |
| <a name="input_role_arn"></a> [role\_arn](#input\_role\_arn) | Codepipeline IAM role arn. | `string` | `""` | no |
| <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name) | Name of the S3 bucket used to store the deployment artifacts | `string` | n/a | yes |
| <a name="input_state"></a> [state](#input\_state) | n/a | <pre>object({<br>    bucket         = string<br>    key            = string<br>    region         = string<br>    dynamodb_table = string<br>  })</pre> | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be applied to the codebuild project | `map(any)` | n/a | yes |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | n/a | `string` | n/a | yes |
| <a name="input_test_project_source"></a> [test\_project\_source](#input\_test\_project\_source) | Information about the test output artifact location | `string` | n/a | yes |
| <a name="input_troubleshoot"></a> [troubleshoot](#input\_troubleshoot) | n/a | `bool` | `false` | no |
| <a name="input_vpc_config"></a> [vpc\_config](#input\_vpc\_config) | n/a | <pre>object({<br>    security_group_ids = list(string)<br>    subnets            = list(string)<br>    vpc_id             = string<br>  })</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the CodeBuild project |
| <a name="output_badge_url"></a> [badge\_url](#output\_badge\_url) | The URL of the build badge when badge\_enabled is enabled |
| <a name="output_id"></a> [id](#output\_id) | The name (if imported via name) or ARN (if created via Terraform or imported via ARN) of the CodeBuild project |
| <a name="output_name"></a> [name](#output\_name) | The name of the CodeBuild project |
| <a name="output_service_role"></a> [service\_role](#output\_service\_role) | The ARN of the IAM service role applied to this project |
<!-- END_TF_DOCS -->