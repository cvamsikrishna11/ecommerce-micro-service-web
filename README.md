# Deploying the E-commerce Micro services Project on EC2

This guide will walk you through the steps to deploy the E-commerce Micro service project on an EC2 instance using Nginx.

## Prerequisites

- An AWS account with an EC2 instance running Amazon Linux.
- Basic knowledge of AWS services and Linux commands.

## Step 1: Create EC2 instance (AWS Linux 2023) 

1. Create EC2 instance using the below user data
    ```
    #!/bin/bash
    sudo yum update -y
    sudo yum install docker -y
    sudo usermod -a -G docker ec2-user
    newgrp docker
    systemctl start docker
    systemctl enable docker

    ```
2. Enable http (80) port for everyone on security groups
1. Obtain the SSH key pair associated with your EC2 instance.
2. Connect to the instance using SSH:
    ```
    ssh -i /path/to/your/key.pem ec2-user@<public-ip-or-dns>
    ```

## Step 2: Download the code, build docker image, run container

1. Clone the repository containing the E-commerce Microservices project:
    ```
    git clone https://github.com/cvamsikrishna11/ecommerce-micro-services.git
    ```

2. Change directory to the project:
    ```
    cd ecommerce-micro-services
    ```
3. Build docker image:
    ```
    docker build -t jjtech-web-image .
    ```
4. Run docker image:
    ```
    docker run -d -p 80:80 jjtech-web-image
    ```

## Step 3: Access the website
3. Open a web browser and navigate to your EC2 instance's public IP or DNS.
4. You should see the E-commerce micro services project served by Nginx.

## Conclusion

Congratulations! You have successfully deployed the E-commerce micro services project on an EC2 instance with Nginx. You can now access the project through Nginx.

Feel free to customize and expand upon this guide based on your specific project requirements.

Happy learning 😊