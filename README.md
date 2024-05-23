# Terraform AWS Infrastructure Deployment

This project demonstrates how to use Terraform to provision infrastructure on AWS. It sets up a basic environment including a VPC, subnets, security groups, ECS cluster, CodeCommit repository, CodePipeline, and CodeBuild project.

## Prerequisites

Before you begin, ensure you have the following:

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- AWS account credentials with appropriate permissions.
- Basic understanding of Terraform and AWS services.

## Usage

1. Clone this repository to your local machine:

    ```bash
    git clone <repository_url>
    ```

2. Navigate to the project directory:

    ```bash
    cd terraform-aws-infrastructure
    ```

3. Initialize Terraform:

    ```bash
    terraform init
    ```

4. Review and modify the `main.tf` file to customize your infrastructure setup according to your requirements. You may need to adjust variables such as VPC CIDR block, region, subnet configurations, etc.

5. Once you've made your changes, run Terraform plan to preview the changes that will be applied:

    ```bash
    terraform plan
    ```

6. If the plan looks good, apply the changes:

    ```bash
    terraform apply
    ```

    Terraform will prompt for confirmation before making any changes.

7. After Terraform applies the changes successfully, you can verify the infrastructure setup in the AWS Management Console.

## Cleanup

To clean up and delete the resources created by Terraform, run:

```bash
terraform destroy
