# Discovery Server - InvestBuddy AI

The **Discovery Server** is a core component of the **InvestBuddy AI** microservices architecture. It manages the registration and discovery of all microservices, enabling dynamic scaling and seamless communication.

---

## 📜 Table of Contents

- [Features](#-features)
- [Architecture](#-architecture)
- [Prerequisites](#-prerequisites)
- [Installation](#-installation)
- [Configuration](#-configuration)
- [Usage](#-usage)
---

## ✨ Features

- **Service Registration**: Automatically registers microservices when they start.
- **Service Discovery**: Allows microservices to dynamically locate others by name.
- **Health Monitoring**: Periodically checks the health of registered microservices.
- **High Availability**: Supports clustered configurations for fault tolerance.

---

## 🏗️ Architecture

The Discovery Server uses **Netflix Eureka** for service registry and discovery. It operates in coordination with other microservices and the API Gateway.

---

## ✅ Prerequisites

Before setting up the Discovery Server, ensure you have:

- **Java 21** or higher
- **Maven 3.8** or higher
- A network allowing communication with microservices

---

## 🛠️ Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/InvestBuddy/discovery-server.git
   cd discovery-server

2. Install dependencies using Maven:

    ```bash
   mvn clean install

3. Start the service:

    ```bash
   mvn spring-boot:run

* **Port**: Default is 8761, but you can change it to avoid conflicts.
* **Self-registration**: Disabled for the Discovery Server itself.
* **Debug Logging**: Enabled for troubleshooting during development.

## ▶️ Usage

1. **Access Eureka Dashboard**: Once the Discovery Server is running, open a browser and navigate to:

    ```bash
   http://localhost:8761
    ````
   You will see a dashboard showing all registered microservices.

2. **Register Microservices**: Ensure other microservices point to the Discovery Server in their configurations. Example in a client microservice's application.properties:

    ```bash
    eureka.client.serviceUrl.defaultZone=http://localhost:8761/eureka
