# IP Tracking Project: Enhancing Cybersecurity with Docker, Nginx, SSH, Node.js, and Tor Network
## Also well-known ft_onion project

![Tor Network](/screenshots/tor.png)

## Introduction
In today's interconnected world, cybersecurity is of paramount importance. This project aims to leverage various technologies, including Docker, Nginx, SSH, Node.js, and Tor network, to strengthen cybersecurity measures. By deploying an Onion website and implementing IP tracking capabilities, the project seeks to identify potential cybercriminals and enhance online security.


## Usage/Examples
Docker setting
```
docker build -t ft_onion .
```
```
docker run -d -p 80:80 -p 9050:9050 -p 3000:3000 -p 2222:22 --name ft_onion_container ft_onion
```
When you are in the ft_onion_container
```
tor 
```
```
cat /var/lib/tor/hidden_service/hostname 
```
```
nginx.conf server_name your_domain.onion; 
```
```
nginx -s reload 
```
```
node /usr/app/index.js
```
```
Let's check the onionsite!
```
## Technologies Utilized:
1. [Docker](): Docker is a containerization platform that provides a lightweight and isolated environment for running applications. It enables easy deployment and management of complex software stacks, ensuring consistency across different environments.

2. [Nginx](): Nginx is a popular web server and reverse proxy server known for its high performance and scalability. It acts as the front-facing server for the project, handling incoming requests and routing them to the appropriate backend services.

3. [SSH]() (Secure Shell): SSH is a secure network protocol that allows secure communication between a client and a server. It provides encrypted remote access to the server, enabling secure administration and management of the project's infrastructure.

4. [Node.js](): Node.js is a JavaScript runtime environment that allows executing JavaScript code outside a web browser. It enables server-side scripting, making it ideal for building scalable and efficient network applications.

5. [Tor Network](): The Tor network, often associated with the dark web, is a network designed to provide anonymity to its users. By leveraging the Tor network, the project aims to track visitor IP addresses while maintaining privacy and protecting the identity of the project's server.

## Project Objective:
The main objective of this project is to develop an Onion website equipped with IP tracking capabilities to enhance cybersecurity measures. By capturing the IP addresses of visitors to the website, the project aims to identify potential cybercriminals and deter malicious activities.

## Project Complexity:
This project involves multiple layers of complexity, including setting up and configuring Docker containers, deploying and securing Nginx as a reverse proxy, implementing SSH for secure remote access, developing a Node.js application for IP tracking, and leveraging the Tor network for anonymity. Coordinating these technologies and ensuring their seamless integration requires a solid understanding of each component and expertise in cybersecurity practices.

By combining these technologies, the project creates a robust cybersecurity solution that not only tracks IP addresses but also maintains privacy and security for both the project owner and website visitors.




## Conclusion:
In an era where cyber threats are prevalent, it is crucial to employ advanced technologies and methodologies to fortify online security. This project's utilization of Docker, Nginx, SSH, Node.js, and the Tor network showcases the commitment to enhancing cybersecurity measures. By tracking IP addresses and identifying potential cybercriminals, the project contributes to a safer online environment.
