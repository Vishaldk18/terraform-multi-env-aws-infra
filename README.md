# 🚀 Terraform Multi-Environment AWS Infrastructure

## 📌 Overview

This project demonstrates how to build a production-style multi-environment infrastructure using Terraform workspaces and custom modules.

Single codebase → Multiple environments:

* dev
* staging
* prod

---

## 🧰 Tech Stack

* Terraform
* AWS (VPC, EC2, Security Groups)
* Workspaces
* Infrastructure as Code (IaC)

---

## 🏗️ Architecture

Each environment creates:

* Separate VPC
* Public subnet
* Internet Gateway
* Security Group
* EC2 instance

All environments are isolated.

---

## 📁 Structure

```text
terraform-multi-env-aws-infra/
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
├── locals.tf
├── dev.tfvars
├── staging.tfvars
├── prod.tfvars
├── modules/
│   ├── vpc/
│   ├── security-group/
│   └── ec2-instance/
├── .gitignore
├── README.md
└── LICENSE
```
---

## 🚀 How to Run

### Init

terraform init

### Create Workspaces

terraform workspace new dev
terraform workspace new staging
terraform workspace new prod

---

## ▶️ Deploy

### Dev

terraform workspace select dev
terraform apply -var-file=dev.tfvars

### Staging

terraform workspace select staging
terraform apply -var-file=staging.tfvars

### Prod

terraform workspace select prod
terraform apply -var-file=prod.tfvars

---

## 🔍 Verify

terraform output

---

## 🧹 Destroy

terraform destroy -var-file=dev.tfvars

---

## 📚 Learnings

* Terraform Workspaces
* Custom Modules
* Multi-environment architecture
* Infrastructure isolation

---

## 👨‍💻 Author

Vishal Khairnar
DevOps Engineer
