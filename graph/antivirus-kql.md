---
title: antivirus-kql
description: 
published: true
date: 2023-08-21T09:35:09.277Z
tags: 
editor: markdown
dateCreated: 2023-08-21T09:35:09.277Z
---

# Header
Your content here

Get list of Windows VM on which Microsoft Antivirus (Defender) is not installed:

```powershell
securityresources
| where type == "microsoft.security/assessments"
| where properties.metadata.displayName == "Install endpoint protection solution on virtual machines"
| where properties.status.code == "Unhealthy"
```

Get list of Virtual Machine on which OS Update are not deployed:

```powershell
securityresources
| where type == "microsoft.security/assessments"
| where properties.metadata.displayName == "System updates should be installed on your machines"
| where properties.status.code == "Unhealthy"
```
