# Wordpress Setup

This directory contains the Docker configuration for setting up Wordpress.

## Contents

- `docker-compose.yaml`: Docker Compose file to set up the Wordpress container.
- `.env.example`: An example environment file containing the database connection credentials and other necessary configurations.

## Configuration

### Docker Compose

Our `docker-compose.yaml` file sets up the latest version of Wordpress in a Docker container, configured to run on port 80.

#### Features

1. **Wordpress Container**:
   - Uses the latest Wordpress image.
   - Configured to restart automatically unless stopped manually.
   - Exposes port 80 for HTTP access to the Wordpress site.

### Environment File

- Copy the `.env.example` to `.env` and update the values according to your database configuration. This file contains essential details needed for Wordpress to connect to your database.

## Usage

### Starting Wordpress

To start the Wordpress service, navigate to this directory and run:

```bash
docker-compose up -d
```

This command will pull the Wordpress image, apply the configurations from your `.env` file, and start the Wordpress site accessible via HTTP on port 80 of your host machine.

### Environment Variables Explained

Here's what each variable in the `.env` file represents:

- **WORDPRESS_DB_HOST**: The IP address or hostname of your database container.
- **WORDPRESS_DB_USER**: The username for the Wordpress database.
- **WORDPRESS_DB_PASSWORD**: The password for the Wordpress database.
- **WORDPRESS_DB_NAME**: The name of the database Wordpress should use.

Ensure these values match the credentials and database details set up in your database environment.

## Connecting to Wordpress

Once Wordpress is running, you can access it by visiting `http://<Your-Host-IP>` in your web browser. Replace `<Your-Host-IP>` with the actual IP address of the machine where Docker is running.

## Security Notes

- Ensure your Wordpress and database containers are secured and not exposed to public access unless necessary.
- Regularly update your Wordpress instance and plugins to keep it secure from vulnerabilities.

## Troubleshooting

- If Wordpress cannot connect to the database, verify that the `.env` file contains the correct database information and that the database container is accessible from the Wordpress container.
- Check the Docker container logs for any errors that may indicate configuration or runtime issues.

### Additional Recommendations

- **Regular Updates**: Document the importance of keeping Wordpress and any plugins/themes updated to reduce security risks.
- **Security Best Practices**: Guide on securing Wordpress, such as setting up HTTPS, using security plugins, and implementing proper access controls.
- **Backup and Recovery**: Include information on how to back up the Wordpress site and database, and how to restore them in case of data loss.
