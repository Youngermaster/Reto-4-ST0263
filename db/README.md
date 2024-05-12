# Database Setup

This directory contains the Docker configuration for setting up MariaDB or MySQL as the database.

## Contents

- `docker-compose.yaml`: Docker Compose file to set up the database container.
- `.env.example`: An example environment file containing the database credentials and other environment-specific configurations.
- `check_db_status.sh`: A script to check the connection to the database using the MySQL command line interface.

## Configuration

### Docker Compose

Our `docker-compose.yaml` file provides the configuration needed to deploy MariaDB by default. It includes an option to switch to MySQL if preferred.

#### Key Features

1. **Choice Between MariaDB and MySQL**:

   - MariaDB is set as the default database. To use MySQL, comment out the MariaDB line and uncomment the MySQL line.
   - Example:

     ```yaml
     # Default to using MariaDB
     image: mariadb:10.6.4-focal
     # If you prefer MySQL, uncomment the following line and comment out the mariadb line
     # image: mysql:8.0.27
     ```

2. **Command Option**:
   - The command `--default-authentication-plugin=mysql_native_password` ensures compatibility with older MySQL clients requiring traditional authentication methods.

### Environment File

- Copy the `.env.example` to `.env` and adjust the values to fit your environment. This file should not be committed to version control.

## Usage

### Starting the Database

Run the following command in this directory to start your database container:

```bash
docker-compose up -d
```

This will pull the necessary image, create a volume for data persistence, and start the database accessible on port 3306.

### Checking Database Status

To check the status of the database and connect using the MySQL client, run the `check_db_status.sh` script:

```bash
bash check_db_status.sh
```

Ensure you have updated the password in the script to match the one specified in your `.env` file before running it.

### Connecting to the Database

To connect to your database from any MySQL client, use the following credentials:

- **Host**: `<Your-Host-IP>` (Replace with your actual host IP or localhost if testing locally)
- **Port**: 3306
- **User**: `wordpressuser`
- **Password**: `password` (ensure this is the same as what you've set in your `.env`)

## Security Notes

- Always change the default passwords before deploying in a production environment.
- Ensure that the `.env` file is properly secured and not accessible publicly.

### Additional Recommendations

- **Security Practices**: Emphasize secure handling of `.env` files and not exposing sensitive information.
- **Version Control**: Mention not to commit `.env` files to version control systems and possibly include them in `.gitignore`.
- **Documentation Consistency**: Make sure all documentation is kept up-to-date with any changes in your configuration files or operational procedures.
