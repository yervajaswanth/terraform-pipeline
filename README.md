# Terraform AWS Infrastructure Deployment

This project demonstrates how to use Terraform to provision infrastructure on AWS. It sets up a basic environment including a VPC, subnets, security groups, ECS cluster, CodeCommit repository, CodePipeline, and CodeBuild project.

## Overview

The Terraform configuration in this project creates the following resources:

- **Virtual Private Cloud (VPC):** A logically isolated section of the AWS cloud where you can launch AWS resources in a virtual network.

- **Subnets:** Subdivisions of the VPC's IP address range that can be used to group resources based on security and operational needs. This project creates public subnets in different availability zones.

- **Internet Gateway:** A gateway that allows communication between instances in the VPC and the internet.

- **Security Groups:** Virtual firewalls that control inbound and outbound traffic to AWS resources. Here, a security group is created to allow inbound traffic on port 80 (HTTP) from anywhere.

- **ECS Cluster:** A logical grouping of ECS container instances. ECS (Elastic Container Service) is a fully managed container orchestration service provided by AWS.

- **IAM Roles:** Identity and Access Management (IAM) roles for ECS service and CodePipeline, used to define permissions for AWS resources.

- **CodeCommit Repository:** A source control repository hosted by AWS for storing and managing code.

- **CodePipeline:** A continuous integration and continuous delivery (CI/CD) service that automates the build, test, and deployment phases of your release process.

- **CodeBuild Project:** A fully managed build service that compiles source code, runs tests, and produces deployable software packages.

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
