## Create an ec2 IAM Role. 

Upon launching the stack the following resources will be created:

 * IAM Role

## Dependencies and Prerequisites
 * Terraform v0.12. or higher
 * AWS account


## Variables
| Variable | Meaning |
| :------- | :----- |
| `name`| IAM Role name |
| `assume_role_policy`| Assume role policy. Defaults to allow ec2.amazonaws.com |
| `force_detach_policies`| Allows for policy / policies to be forcibly detached |
| `path`| IAM role path |
| `description`| Role description |
| `policy_arn`| A list of policy ARNs to attached to the role. At least 1 must be specified. |


## Outputs
 * role - root IAM role object
 * profile - root IAM profile object

## Usage

 * policy_arn - At least 1 policy_arn must be specified.

To import the module add the following to your TF file:
```
module "role" {
  source = ""
}
```
* To initialise the module run: terraform init
* To update the module run    : terraform get --update
* To see a plan of changes    : terraform plan
* To apply                    : terraform apply 

