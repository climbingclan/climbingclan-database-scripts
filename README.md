# MySQL View Management System

This project provides a set of Node.js scripts to manage MySQL views for a WordPress database. It allows you to pull existing views from a remote database, push local view definitions to the database, and manage view deletions.

## Important Documentation

Before proceeding with any operations, please read the following documents:

1. This README.md file for an overview of the system and its usage.
2. The `sql_views_explanation.md` file for detailed explanations of each SQL view used in the project.
3. Review the contents of the `views/` folder to understand the current state of your SQL views.

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Installation](#installation)
3. [Configuration](#configuration)
4. [Scripts](#scripts)
   - [Pull Views](#pull-views)
   - [Push Views](#push-views)
5. [Usage](#usage)
6. [Troubleshooting](#troubleshooting)

## Prerequisites

- Node.js (v12 or higher)
- npm (Node Package Manager)
- SSH access to the remote server
- MySQL database access

## Installation

1. Clone this repository:
   ```
   git clone https://github.com/your-username/mysql-view-management.git
   cd mysql-view-management
   ```

2. Install dependencies:
   ```
   npm install
   ```

## Scripts

### Pull Views

The `pullViews.js` script retrieves all view definitions from the remote database and saves them as individual SQL files in the `views/` directory.

How it works:
1. Establishes an SSH connection to the remote server.
2. Sets up an SSH tunnel for MySQL connection.
3. Retrieves the list of all views in the database.
4. For each view:
   - Fetches the view definition.
   - Saves the definition to a file in the `views/` directory.

### Push Views

The `pushViews.js` script reads all SQL files from the `views/` directory and updates or creates the corresponding views in the remote database.

How it works:
1. Establishes an SSH connection to the remote server.
2. Sets up an SSH tunnel for MySQL connection.
3. Reads all SQL files from the `views/` directory.
4. For each file:
   - If the file content is "drop view [viewname]":
     - Drops the view from the database.
     - Deletes the local file.
   - Otherwise:
     - Drops the existing view (if any).
     - Creates/updates the view with the new definition.

Note: This script processes all views in a single operation. Atomic updates for individual views are not supported.

## Limitations

- Atomic Updates: The system does not support atomic updates for individual views. When running the push script, all views are processed in a single operation. If an error occurs during the process, some views may be updated while others are not, potentially leaving the database in an inconsistent state.
- Rollback: There is no built-in rollback mechanism. In case of a failed update, manual intervention may be required to restore the previous state of the views.
- Concurrency: The scripts do not implement any locking mechanism. Running multiple instances of the push script simultaneously may lead to unexpected results.

## Usage

To pull views from the remote database:
```
node scripts/pullViews.js
```

To push views to the remote database:
```
node scripts/pushViews.js
```

## Troubleshooting

1. SSH Connection Issues:
   - Ensure your SSH key is added to the SSH agent: `ssh-add ~/.ssh/your_key`
   - Check if the SSH_AUTH_SOCK environment variable is set: `echo $SSH_AUTH_SOCK`

2. Database Connection Issues:
   - Verify the database credentials in `config.js`
   - Ensure the SSH tunnel is working correctly

3. File Permission Issues:
   - Make sure you have write permissions in the `views/` directory

4. View Syntax Errors:
   - If a view fails to update, check the SQL syntax in the corresponding file in the `views/` directory

For any other issues, please check the console output for error messages and stack traces.



## Configuration

The project uses a `config.js` file to manage connection details. Here's how to configure it:

1. Open `config.js` in your preferred text editor.

2. Update the SSH configuration:
   ```javascript
   const sshConfig = {
     host: 'your-ssh-host.com',
     username: 'your-ssh-username',
     agent: process.env.SSH_AUTH_SOCK,
     compression: true,
     serverAliveInterval: 60,
   };
   ```

3. Update the database configuration:
   ```javascript
   db: {
     host: 'localhost', // Usually 'localhost' for SSH tunneling
     user: 'your-db-username',
     database: 'your-database-name'
   }
   ```

4. The `getDbPassword()` function retrieves the database password from the remote server. Ensure the path in this function matches your server's configuration:
   ```javascript
   conn.exec('cat ~/path/to/your/password/file', (err, stream) => {
     // ...
   });
   ```

## SQL Views

For a detailed explanation of each SQL view used in this project, please refer to the `sql_views_explanation.md` file. This document provides comprehensive information about the purpose, structure, and usage of each view.

Before making any changes to the views, it's crucial to understand their current state and purpose. Review the SQL files in the `views/` folder to see the current definitions of each view.
