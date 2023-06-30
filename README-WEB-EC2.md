# Deploying the E-commerce Project on EC2

This guide will walk you through the steps to deploy the E-commerce project on an EC2 instance using Nginx.

## Prerequisites

- An AWS account with an EC2 instance running Amazon Linux.
- Basic knowledge of AWS services and Linux commands.

## Step 1: Connect to the EC2 Instance

1. Obtain the SSH key pair associated with your EC2 instance.
2. Connect to the instance using SSH:
    ```
    ssh -i /path/to/your/key.pem ec2-user@<public-ip-or-dns>
    ```

## Step 2: Install Nginx and Git, Deploy the code

1. Install Nginx:
    ```
    sudo yum install nginx -y
    ```

2. Install Git:
    ```
    sudo yum install git -y
    ```

3. Clone the repository containing the E-commerce Microservices project:
    ```
    git clone https://github.com/cvamsikrishna11/ecommerce-micro-services.git
    ```

4. Copy the front-end files to the Nginx web root directory:
    ```
    sudo cp -R ecommerce-micro-services/front-end/* /usr/share/nginx/html/
    ```
5. Start the Nginx service:
    ```
    sudo systemctl start nginx
    ```

## Step 3: Access the website
3. Open a web browser and navigate to your EC2 instance's public IP or DNS.
4. You should see the E-commerce project served by Nginx.

## Conclusion

Congratulations! You have successfully deployed the E-commerce project on an EC2 instance with Nginx. You can now access the project through Nginx.

Feel free to customize and expand upon this guide based on your specific project requirements.

Happy learning 😊