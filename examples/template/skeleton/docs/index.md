# Spring Boot gRPC Service Template

Welcome to the **Spring Boot gRPC Service Template**! This template helps you create a microservice using Spring Boot and gRPC, which can be managed and published using Backstage.

---

## Features

- Creates a fully functional gRPC microservice using Spring Boot.
- Automatically configures repository creation and publishing on GitHub.
- Supports customizable Java package names and service configurations.

---

## Prerequisites

Before you begin, ensure you have the following tools installed and configured:

1. **Backstage**: A running Backstage instance where this template is registered.
2. **GitHub Account**: Access to GitHub for publishing the repository.
3. **Java Development Kit (JDK)**: Java 11 or higher.
4. **Maven**: Ensure Maven is installed and available in your `PATH`.
5. **Postman/GRPCURL**: To test the gRPC service after deployment.

---

## How to Use

### 1. **Generate a Component**

1. Open your Backstage instance.
2. Navigate to the "Create" section and select the **Spring Boot gRPC Service Template**.
3. Fill in the required parameters:
   - **Name**: A unique identifier for your component.
   - **Java Package Name**: The base package name for your Java code (e.g., `com.example.myservice`).
   - **Description**: A short description of the service.
   - **Owner**: Select the owner group for the service.
   - **Repository Location**: Choose or enter the repository URL on GitHub.
4. Click **Create Component**.

This process will generate the repository and publish it to the specified GitHub location.

---

### 2. **Clone the Repository**

After the repository is created:

```bash
# Clone the repository
git clone <repoUrl>

# Navigate to the project directory
cd <repoFolder>
```

---

### 3. **Run the Service Locally**

1. Ensure all dependencies are installed:
   ```bash
   mvn clean install
   ```

2. Start the service:
   ```bash
   mvn spring-boot:run
   ```

   By default, the service runs on port `6565`. You can confirm this from the logs.

---

### 4. **Test the gRPC Service**

#### Using Postman

1. Open Postman and create a new gRPC request.
2. Set the server URL to:
   ```
   grpc://localhost:6565
   ```
3. Import the `.proto` files from the `src/main/proto` directory to define the service methods.
4. Call the desired method by sending a request with the appropriate payload.

#### Using grpcurl

1. List available services:
   ```bash
   grpcurl -plaintext localhost:6565 list
   ```

2. Call a method (e.g., `Greeter/SayHello`):
   ```bash
   grpcurl -plaintext -d '{"name": "John"}' localhost:6565 Greeter/SayHello
   ```

---

### 5. **Customizing the Service**

1. Modify the `.proto` files in the `src/main/proto` directory to define your gRPC service and messages.
2. Implement the service logic in the `src/main/java` directory.
3. Update configurations in `src/main/resources/application.properties` as needed.

---

### 6. **Deploy the Service**

For production, package the application and deploy it using your preferred environment (e.g., Kubernetes, AWS, Docker).

1. Package the application:
   ```bash
   mvn clean package
   ```

2. The packaged `.jar` file can be found in the `target` directory.

---

### 7. **Backstage Integration**

Once the repository is created and the service is running:

1. The service is automatically registered in the Backstage catalog.
2. Navigate to the "Catalog" section in Backstage and search for your service.
3. Access metadata, documentation, and operational details of the service directly from Backstage.

---

## Additional Resources

- [Spring Boot Documentation](https://spring.io/projects/spring-boot)
- [gRPC Java Documentation](https://grpc.io/docs/languages/java/)
- [Backstage Documentation](https://backstage.io/docs)

---

Happy building with Spring Boot and gRPC!
