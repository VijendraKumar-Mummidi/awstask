# awstask — Terraform deployment for Strapi v4 on AWS

Complete Terraform infrastructure for deploying Strapi v4 on AWS using:
- **ECR** + **ECS Fargate** for containerized application
- **RDS** PostgreSQL for database
- **S3** for media storage
- **Application Load Balancer (ALB)** with **ACM** HTTPS
- **VPC** with public/private subnets
- **GitHub Actions** CI/CD pipeline

## Prerequisites

1. AWS Account with programmatic access
2. GitHub Account
3. Domain name (default: vijendrakumar.com)
4. Git installed locally

## Quick Start

### 1. Clone and setup
```bash
git clone https://github.com/VijendraKumar-Mummidi/awstask.git
cd awstask
```

### 2. Configure AWS IAM User
Create IAM user with managed policies: AmazonEC2ContainerRegistryPowerUser, AmazonECS_FullAccess, AmazonRDSFullAccess, AmazonS3FullAccess

### 3. Configure GitHub Secrets
Add to repository settings > Secrets:
- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- ECR_REPO
- DB_PASSWORD

### 4. Update Domain Name
Edit terraform/variables.tf if using different domain.

### 5. Push to trigger CI/CD
```bash
git push origin main
```

## License

MIT
