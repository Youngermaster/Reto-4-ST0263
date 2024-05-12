# Reto 4 ST0263

## Overview

**Reto 4: Aplicación Monolítica con Balanceo y Datos Distribuidos (BD y archivos)** is a project that sets up 2 Wordpress applications with load balancing using NGINX and a distributed database (MySQL or MariaDB) and file system (NFS). This project involves using Docker containers across multiple EC2 instances to create a robust and scalable web application infrastructure.

<img src="/architecture.png" width="300" alt="Architecture">

## Video Demo

### YouTube Video

> Note: The video is in Spanish.

[https://www.youtube.com/watch?v=1Q6J9Q1Z9ZI](https://www.youtube.com/watch?v=1Q6J9Q1Z9ZI)

### Video File

> Note: The video file is hosted on Microsoft OneDrive. The file may be deleted after the project deadline, or the link may expire.

[Download Video](https://eafit-my.sharepoint.com/:f:/g/personal/jmyoungh_eafit_edu_co/EsMJWWKnWZBKu50FoQLVi7gBQ3XdO7lIzwNRgEtisKlGIA?e=ogpBPc)

## Project URL

> Note: The project URL may not be available after the project deadline. Because the project is hosted on AWS, the instances may be terminated after the project evaluation.

[https://reto4.grisu.co/](http://reto4.grisu.co/)

## Project Structure

This repository is organized into several directories, each containing components necessary for the deployment of the application:

- `ansible/`: Contains Ansible playbooks and configurations for provisioning and setting up AWS EC2 instances.
- `db/`: Includes Docker configurations for setting up the database (MariaDB/MySQL).
- `nginx/`: Holds the Dockerfile and configurations for the NGINX load balancer.
- `terraform/`: Contains Terraform files for infrastructure provisioning. (Note: Not extensively used in this project due to assignment limitations.)
- `wordpress/`: Contains Docker configurations for setting up Wordpress instances.

Each directory has its own `README.md` with detailed instructions and explanations specific to that component.

## Getting Started

To set up the entire application stack, follow these general steps:

1. **Provision Infrastructure**:

   - Manually provision AWS EC2 instances or use the Ansible playbooks in the `ansible/` directory for automated setup.
   - (Optional) For a more automated infrastructure setup, see the Terraform files in the `terraform/` directory.

2. **Database Setup**:

   - Navigate to the `db/` directory.
   - Follow the instructions in `db/README.md` to set up your database using Docker Compose.

3. **Wordpress Setup**:

   - Navigate to the `wordpress/` directory.
   - Follow the instructions in `wordpress/README.md` to get your Wordpress instances up and running.

4. **NGINX Load Balancer Setup**:

   - Navigate to the `nginx/` directory.
   - Follow the instructions in `nginx/README.md` to set up NGINX as a load balancer for the Wordpress instances.

5. **Integration and Testing**:
   - After setting up the database, Wordpress instances, and NGINX, ensure all components are correctly integrated.
   - Test the setup by accessing your Wordpress site through the NGINX load balancer's IP.

## Additional Resources

- For automated provisioning and configuration of AWS EC2 instances, refer to the `ansible/` directory.
- If interested in infrastructure as code (IaC) for AWS, see the `terraform/` directory for an example setup (limited usage in this project).

## Support

Should you encounter any issues or have questions regarding the setup, please refer to the respective `README.md` in each directory or raise an issue in the repository.

## Contributions

Contributions to improve the project are welcome.
