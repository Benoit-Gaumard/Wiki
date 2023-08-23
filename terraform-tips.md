---
title: terraform-tips
description: 
published: true
date: 2023-08-23T15:30:57.282Z
tags: terraform
editor: markdown
dateCreated: 2023-08-21T12:02:05.520Z
---

# Header
Your content here


Display the current version:

```bash
terraform –version
```

Update Terraform:

```bash
terraform init -upgrade
```

Apply a configruation file tfvars:

```bash
terraform apply -var-file="terraform.tfvars"
```

Auto Approve:

```bash
terraform apply -auto-approve
```

Terraform version repository: 

https://developer.hashicorp.com/terraform/downloads

https://releases.hashicorp.com/terraform/