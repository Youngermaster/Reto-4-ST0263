# Reto 4 ST0263

## Overview

**Reto 4: Kubernetes-based Monolithic Application with Distributed Data and File Systems** is a project that sets up WordPress with MariaDB, utilizing Kubernetes for orchestration to achieve high availability and scalability.

## Video Demo

### YouTube Video

> Note: The video is in Spanish.

[https://www.youtube.com/watch?v=1Q6J9Q1Z9ZI](https://www.youtube.com/watch?v=1Q6J9Q1Z9ZI)

### Video File

> Note: The video file is hosted on Microsoft OneDrive. The file may be deleted after the project deadline, or the link may expire.

[Download Video](https://eafit-my.sharepoint.com/:f:/g/personal/jmyoungh_eafit_edu_co/EqG2SpIDLkZEn6wx4W2fkokBUc4WQeDwOSnlkEPZKmmdew?e=dor0tZ)

## Project URL

> Note: The project URL may not be available after the project deadline. Because the project is hosted on AWS, the instances may be terminated after the project evaluation.

[https://reto4.grisu.co/](http://reto4.grisu.co/)

## Project Structure

This repository is organized into several directories, each containing components necessary for the deployment of the application on Kubernetes:

- `k8s/`: Contains Kubernetes YAML files for deploying WordPress and MariaDB.
- `ansible/`: Includes Ansible playbooks for initial setup and configurations on EC2s instances.
- `db/`: Holds Kubernetes configurations for MariaDB deployment.
- `wordpress/`: Contains Kubernetes configurations for WordPress deployment.

## Getting Started

To deploy the application stack on Kubernetes, follow these steps:

1. **Cluster Setup**:

   - Ensure your Kubernetes cluster is up and running. If using AWS EKS, follow the manual setup due to IAM limitations.

2. **Deploy the Applications**:

   - Navigate to the `k8s/` directory.
   - Apply the Kubernetes configurations:

     ```bash
     kubectl apply -f configmaps-k8s.yml
     kubectl apply -f db-k8s.yml
     kubectl apply -f wordpress-k8s.yml
     ```

3. **Accessing the Application**:
   - Once deployed, find the external IP or DNS name provided by the LoadBalancer service for WordPress:

     ```bash
     kubectl get service wordpress
     ```

   - Access your WordPress site via the provided URL.

## Additional Resources

- Kubernetes official documentation: [https://kubernetes.io/docs/](https://kubernetes.io/docs/)

## Support

For any issues or questions, please refer to the `README.md` in each directory or raise an issue in the repository.

## Contributions

Contributions to improve the project are welcome.
