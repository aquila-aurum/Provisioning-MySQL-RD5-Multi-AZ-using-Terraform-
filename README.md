
# AWS Project 2: RDS Multi-AZ Setup

This project provisions a MySQL RDS database instance in a Multi-AZ configuration using Terraform.

## Features

- Multi-AZ RDS instance for high availability
- Custom subnet group
- Example SQL bootstrap script
- Modular and easy-to-customize code

## Setup

Replace the placeholder subnet IDs and security group values in `main.tf`.

## Deploy

```bash
terraform init
terraform apply
```

## Cleanup

```bash
terraform destroy
```
