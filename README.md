<p align="center">
  <a href="https://www.cloud42.io/" target="_blank" rel="Homepage">
  <img width="200" height="200" src="https://www.cloud42.io/wp-content/uploads/2020/01/transparent_small.png">
  </a>
</p>

---
<p align="center">Need help with your Cloud builds <a href="https://www.cloud42.io/contact/" target="_blank" rel="ContactUS"> GET IN TOUCH</a>.</p>

---
## Create an ec2 IAM Role. 

Upon launching the stack the following resources will be created:

 * IAM Role

## Dependencies and Prerequisites
 * Terraform v0.13.2 or higher
 * AWS account


## Variables
| Variable | Meaning |
| :------- | :----- |
| `name`| The IAM Role name. Conflicts with name\_prefix. Choose either |
| `name_prefix`| The IAM Role name prefix. Conflicts with name. Choose either |
| `assume_role_policy`| Assume role policy. Defaults to allow ec2.amazonaws.com |
| `force_detach_policies`| Allows for policy / policies to be forcibly detached |
| `path`| IAM role path |
| `description`| Role description |
| `policy_arn`| A list of policy ARNs to attached to the role. At least 1 must be specified |
| `principal_type` | Principal type for trust identity - Used by trust relationship policy  |
| `principal_identifiers` | Principal identity for trust identity - Used by trust relationship policy  |

## Outputs
 * role - root IAM role object
 * profile - root IAM profile object

## Usage

 * policy\_arn - At least 1 policy_arn must be specified.

To import the module add the following to your TF file:
```
module "role" {
  source  = "Cloud-42/ec2-iam-role/aws"
  version = "4.0.0"
  principal_type        = "Service"
  principal_identifiers = ["ec2.amazonaws.com"]

  name = "${var.environment}-server-role-"

  policy_arn = [
    "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM",
    "arn:aws:iam::aws:policy/AWSCodeDeployDeployerAccess",
  ]
}
```
* To initialise the module run: terraform init
* To update the module run    : terraform get --update
* To see a plan of changes    : terraform plan
* To apply                    : terraform apply 

