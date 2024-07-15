# SQL Server Automation with PowerShell and T-SQL

This repository contains scripts for automating SQL Server tasks using PowerShell and T-SQL. The tasks include setting up PowerShell, configuring Always On, creating and deleting databases, and creating users with assigned permissions.

## Contents

- `SetupPowerShell.ps1` - Sets up PowerShell for SQL Server.
- `ConfigureAlwaysOn.ps1` - Configures Always On.
- `CreateDatabase.sql` - Creates a new database.
- `DeleteDatabase.sql` - Deletes an existing database.
- `CreateUser.sql` - Creates a new user and assigns permissions.

## Getting Started

### Prerequisites

- SQL Server instance
- PowerShell
- SQL Server Management Studio (SSMS)

### Usage

1. **Setup PowerShell for SQL Server**

   ```powershell
   ./SetupPowerShell.ps1
   ```

2. **Configure Always On**

   ```powershell
   ./ConfigureAlwaysOn.ps1
   ```

3. **Create a Database**

   ```sql
   -- Run in SQL Server Management Studio
   :r .\CreateDatabase.sql
   ```

4. **Delete a Database**

   ```sql
   -- Run in SQL Server Management Studio
   :r .\DeleteDatabase.sql
   ```

5. **Create a User and Assign Permissions**

   ```sql
   -- Run in SQL Server Management Studio
   :r .\CreateUser.sql
   ```

## Scripts

### SetupPowerShell.ps1

This script sets up PowerShell to work with SQL Server by installing necessary modules.

```powershell
# Install SQLServer module
Install-Module -Name SqlServer -Force

# Import SQLServer module
Import-Module SqlServer
```

### ConfigureAlwaysOn.ps1

This script configures SQL Server Always On availability groups.

```powershell
# Define parameters
$ClusterName = "ClusterName"
$InstanceName = "InstanceName"
$AGName = "AGName"

# Example configuration command
Enable-SqlAlwaysOn -Path "SQLSERVER:\SQL\$InstanceName\AvailabilityGroups\$AGName" -ClusterName $ClusterName
```

### CreateDatabase.sql

This script creates a new database.

```sql
CREATE DATABASE [DatabaseName]
GO
```

### DeleteDatabase.sql

This script deletes an existing database.

```sql
DROP DATABASE [DatabaseName]
GO
```

### CreateUser.sql

This script creates a new user and assigns permissions.

```sql
CREATE LOGIN [UserName] WITH PASSWORD = 'Password';
GO

CREATE USER [UserName] FOR LOGIN [UserName];
GO

ALTER ROLE [db_datareader] ADD MEMBER [UserName];
GO

ALTER ROLE [db_datawriter] ADD MEMBER [UserName];
GO
```

## Contributing

Feel free to fork this repository, make enhancements, and submit pull requests.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
