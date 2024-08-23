# How to run this project on your laptop

Here's a brief guide on how to run this PHP Laravel project using Docker on both Linux and Windows:

## Running PHP Laravel Project with Docker

This guide provides instructions on how to run a PHP Laravel project using Docker on both Linux and Windows platforms.

### Prerequisites

Before proceeding, ensure that you have Docker and Docker Compose installed on your system.


### Docker Installation Guide on ubuntu 



https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04


### Docker compose Installation Guide

https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-22-04

### Step 1: Clone the Repository


Clone the GitHub repository containing your Laravel project code.


Get into the code directory by running the below command


cd jobportal-web-app


### Step 3: Configure Environment Variables
If your Laravel project requires any environment variables, create a .env file in the project root directory and set the necessary variables.

### Step 4: Build and Run Docker Containers

Linux (Terminal):

docker-compose up -d

Windows (PowerShell):

docker-compose up -d

### Step 5: Access the Application


Once the Docker containers are up and running, you can access your Laravel application in a web browser.

Linux: Open a web browser and navigate to http://localhost.


Windows: If using Docker Desktop for Windows, you can access the application at http://localhost. 
If using Docker Toolbox, replace localhost with the IP address of the Docker machine.


### Step 6: Stop and Remove Containers


To stop and remove the Docker containers, run the following command:


docker-compose down


This guide should help you to get this Laravel project up and running using Docker on both Linux and Windows platforms. 
Feel free to customize it further based on your specific project requirements.
