# AWS VPC Web Application Deployment using Terraform

## Overview
This project provisions a complete AWS infrastructure using Terraform, including a custom VPC, public subnets across multiple Availability Zones, EC2 instances, and an Application Load Balancer to host a static web application.

## Architecture
- Custom VPC with CIDR block
- Two public subnets in different AZs
- Internet Gateway and Route Tables
- EC2 instances with user-data based web server setup
- Application Load Balancer with target groups
- Security Groups for SSH and HTTP access

## Tech Stack
- AWS (VPC, EC2, ALB, Security Groups)
- Terraform
- Linux (User Data scripts)

## How to Deploy
```bash
terraform init
terraform plan
terraform apply
