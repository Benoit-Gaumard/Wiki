---
title: basics
description: 
published: true
date: 2023-09-14T10:14:29.882Z
tags: 
editor: markdown
dateCreated: 2023-09-14T10:14:29.882Z
---

# Header


$SecureString = Read-Host "Enter a password for user account" -AsSecureString            
$BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($SecureString)            
$PlainPassword = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)            
