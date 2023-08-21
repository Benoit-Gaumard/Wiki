---
title: git-tips
description: 
published: true
date: 2023-08-21T12:15:02.345Z
tags: 
editor: markdown
dateCreated: 2023-08-21T11:59:51.059Z
---

# Header
Your content here

Clone a repo:

```bash
git clone
``` 

Get the current branch:

```bash
git status
```

Add a folder:

```bash
git add .
```

Create a commit (Local):

```bash
git commit -m "BGA First Commit"
```

Push modificatiosnto the remote branch:

```bash
git push
```

Get the last version of the repo from the remote branch:

```bash
git pull
```

Change branch:

```bash
git checkout mybranch
```

List local branches:

```bash
git branch
```

List remote branches:

```bash
git branch -r
```
List local and remote branches:

```bash
git branch -a
```

Delete a branch (Local):

```bash
git branch -d my-branch-name
git branch -D my-branch-name
```

Configure repo:

```bash
git config –global user.name « Your Name »
git config –global user.email you@example.com
```

Logs:

```bash
git log -v
git log -p
```

Create a branch (local):

```bash
git branch my-new-branch
git checkout -b feat-azure-functions
```


Delete branch (Local):

```bash
git branch -d feat-add-pricesheet-script (delete local branch)
```

Delete branch (Remote):

```bash
git push origin -d my-branch
```
