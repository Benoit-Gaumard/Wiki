---
title: advisor-kql
description: 
published: true
date: 2023-08-21T09:30:55.206Z
tags: 
editor: markdown
dateCreated: 2023-08-21T09:30:55.206Z
---

# Header
Your content here

Get list of Virtual Machine on which we have Azure Advisor cost recommendation:

```powershell
advisorresources
| where type == "microsoft.advisor/recommendations"
| where properties.category == "Cost"
| where properties.impactedField == "Microsoft.Compute/virtualMachines"`
```


