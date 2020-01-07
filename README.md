## Create an ec2 IAM Role. 

Upon launching the stack the following resources will be created:

 * IAM Role

## Dependencies and Prerequisites
 * Terraform v0.12. or higher
 * AWS account


## Variables
| Variable | Meaning |
| :------- | :----- |
| ``| |

## Outputs
 * role - root IAM Role object
 * profile - root IAM Profile object

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

