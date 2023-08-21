# Header
Your content here ok

> This documentation site is running on Wiki.js!
{.is-success}

Wiki.js requires one of the many [supported database engines](https://github.com/Benoit-Gaumard/BlogRoll).


> test
{.is-danger}

:link:



```powershell
port: 3000
$test
```

# Getting Started

Wiki.js is quick and easy to install. You should be up and running in no time.

- [Requirements *Server and database prerequisites.*](/install/requirements)
- [Installation Guide *Detailed installation instructions for all platforms.*](/install)
{.links-list}

> This documentation site is running on Wiki.js!
{.is-success}

# Getting Started

Wiki.js is quick and easy to install. You should be up and running in no time.

- [Requirements *Server and database prerequisites.*](/install/requirements)
- [Installation Guide *Detailed installation instructions for all platforms.*](/install)
{.links-list}

# User Guide

- [The Basics *New to Wiki.js? Learn how to use it and create your first page.*](/guide/intro)
- [Folder Structure & Tags *Learn how to categorize your pages for an easier browsing experience.*](/guide/structure)
- [Manage Pages *How to create, edit and manage your pages.*](/guide/pages)
- [Using Editors *Learn how to use the various editors.*](/editors)
- [Using Assets *How to upload and manage assets such as images and documents.*](/guide/assets)
{.links-list}

# Administration

- [:globe_with_meridians: Locales *Display the wiki in a different language or enable multilingual capabilities.*](/locales)
- [:busts_in_silhouette: User Groups *Permissions and access rights.*](/groups)
- [:satellite: Telemetry *Help Wiki.js developers understand crashes by enabling anonymous telemetry.*](/telemetry)
- [:wrench: Troubleshooting *Solutions to common issues.*](/troubleshooting)
{.links-list}

## Modules
Modules greatly expand the capabilities of your wiki.
- [:lock: Authentication *Configure how users can login and register to your wiki.*](/auth)
- [:speech_balloon: Comments *Add discussion capabilities to your wiki.*](/comments)
- [:pencil: Editors *Manage the various editors used to create content.*](/editors)
- [:hourglass: Rendering *Configure how content is parsed and rendered into its readable form.*](/rendering)
- [:mag: Search Engines *Manage the search capabilities of your wiki.*](/search)
- [:floppy_disk: Storage *Backup or sync the content of your wiki with external storage services.*](/storage)
{.links-list}

# Developers

Wiki.js is fully extensible for maximum customization.

- [:book: Getting Started *How to setup a dev environment for Wiki.js.*](/dev)
- [:closed_book: Modules *Learn how to create a module.*](/dev/modules)
- [:art: Themes *Learn how to create your own theme.*](/dev/themes)
{.links-list}

# Localization
- [:globe_with_meridians: Translations *Contribute a new language or test new keys*](/dev/translations)
{.links-list}

# Contribute
- [:question: Ask a Question *We're here to help.*](https://github.com/Requarks/wiki/discussions)
- [:fire: Report a Bug *Help us squash those pesky bugs.*](https://github.com/Requarks/wiki/discussions)
- [:bulb: Suggest a New Feature *We need your ideas!*](https://requests.requarks.io/wiki)
- [:moneybag: Donate *Make a small donation or become a sponsor of this wonderful project!*](https://js.wiki/donate)
{.links-list}

![Wiki.js](https://static.requarks.io/logo/wikijs-butterfly.svg){.align-abstopright}

> Note that in order to use the PostgreSQL search module, the `pg_trgm` extension must be available on the host. The extension is part of the `postgresql-contrib` package in most Linux distributions. The docker PostgreSQL image already includes the extension.
{.is-info}

---

Wiki.js is also compatible with the following database systems:

- ![](https://static.requarks.io/logo/mysql.svg =24x){.mr-2} MySQL **8.0 or later** *(MySQL **5.7.8** is partially supported, [read more](/install/requirements/mysql5))*
- ![](https://static.requarks.io/logo/mariadb.svg =24x){.mr-2} MariaDB **10.2.7 or later**
- ![](https://static.requarks.io/logo/microsoft-sql-server-alt.svg =24x){.mr-2} MS SQL Server **2012 or later**
- ![](https://static.requarks.io/logo/sqlite-alt.svg =24x){.mr-2} SQLite **3.9 or later**
{.grid-list}

> **These engines *(MySQL, MariaDB, MS SQL Server and SQLite)* will NOT be supported in the next major version of Wiki.js**. Make sure you understand the implications of migrating your database to PostgreSQL if you plan on upgrading to 3.x+ in the coming years. An export + import tool will be made available at / shortly after release.
>
> SQLite is **not recommended** for production deployments.
{.is-warning}
