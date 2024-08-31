# Terraform Module Template

This repository is a boilerplate to start writing your own Terraform Module

## Features:

### Terraform Linting & Formatting

<img
    alt="terraform"
    src="https://img.shields.io/badge/terraform-844FBA.svg?&style=for-the-badge&logo=terraform&logoColor=white"
/>

### IAC Security Scanning

<img
    alt="Trivy"
    src="https://img.shields.io/badge/trivy-1904DA.svg?&style=for-the-badge&logo=trivy&logoColor=white"
/>

### Automatic Terraform Doc Generation

<img
    alt="Terraform Docs"
    src="https://img.shields.io/badge/terraform_docs-4285F4.svg?&style=for-the-badge&logo=googledocs&logoColor=white"
/>

## Prerequisites

Install the follow tools to your local machine:

```bash
# Terraform
$ brew install terraform

# Terraform lint to enforce best practices in writing Terraform code
# Reference: https://github.com/terraform-linters/tflint
$ brew install tflint

# Trivy for IAC Security scanning
# Reference: https://github.com/aquasecurity/trivy
$ brew install trivy

# Terraform Docs to autogenerate Terraform Module documentation
# Reference: https://terraform-docs.io/user-guide/installation/
$ brew install terraform-docs

# Pre Commit hooks to enforce Terraform Docs generation on every commit
# Reference: https://pre-commit.com/#install
$ brew install pre-commit
```

## Getting started

On the top right of this repo, click on `Use this template` -> `Create new repository`. Then fill in the name of the repository with the following format, `terraform-<provider_name>-<custom_name>`. Eg. `terraform-aws-private-eks`.

```bash
$ git clone <your_project_repository>

$ cd <your_project_repository>

# Install pre-commit hooks
$ pre-commit install-hooks

# Make code changes and try to commit. You should see the following output
Terraform fmt............................................................Passed
Terraform validate with tflint...........................................Passed
Terraform validate with trivy............................................Passed
Terraform docs...........................................................Passed
```

You are all set to go to write your custom Terraform Module! 🚀

---

### Note: Everything below this line is generated via terraform-docs

---

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.65.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.65.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_vpc.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | The IPv4 CIDR block for the VPC | `string` | `"10.0.0.0/16"` | no |
| <a name="input_create_vpc"></a> [create\_vpc](#input\_create\_vpc) | Whether to create the VPC or not | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Name to be used on all the resources as identifier | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to attach to resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_arn"></a> [vpc\_arn](#output\_vpc\_arn) | The ARN of the VPC |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
<!-- END_TF_DOCS -->
