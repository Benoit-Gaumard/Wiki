---
title: aks-kql
description: 
published: true
date: 2023-08-21T09:33:12.732Z
tags: 
editor: markdown
dateCreated: 2023-08-21T09:33:12.732Z
---

# Header
Your content here

List nodes pools:

```powershell
Resources
| where type == "microsoft.containerservice/managedclusters"
| extend nodepools = properties.agentPoolProfiles
| mv-expand nodepools
| project name, nodepools.name, nodepools.vmSize, nodepools.minCount, nodepools.maxCount, nodepools.powerState.code,nodeCount = tostring(nodepools['count'])
| sort by name
```
List nodes pools2:

```powershell
Resources
 | where type == "microsoft.containerservice/managedclusters"
 | extend properties.agentPoolProfiles
 | project subscriptionId, name, pool = (properties.agentPoolProfiles)
 | mv-expand pool
 | project subscription = subscriptionId, cluster = name, size = pool.vmSize, count = pool.['count']
 ```