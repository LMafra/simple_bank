
# Backend Master Class Project

An advanced backend system demonstrating modern software development practices with **Golang**, **Postgres**, **Kubernetes**, and **gRPC**.

## 🚀 Features

- **Authentication**: Secure REST API.
- **Database Interactions**: Integration with **PostgreSQL**.
- **Containerization**: Using **Docker** for portable deployments.
- **Orchestration**: Scalable deployments with **Kubernetes**.
- **Inter-service Communication**: Efficient, lightweight communication via **gRPC**.

---

## 🛠️ Technologies

- **Golang**: High-performance backend development.
- **PostgreSQL**: Robust, SQL-compliant database.
- **Docker**: Simplified containerized builds.
- **Kubernetes**: Cluster management and orchestration.
- **gRPC**: Fast, modern RPC framework.

---

## ⚙️ Setup Instructions

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

2. **Set up the Postgres database**:
   - Install PostgreSQL.
   - Create the required database and configure connection settings.

3. **Build Docker images**:
   ```bash
   docker build -t <image-name> .
   ```

4. **Deploy on Kubernetes**:
   - Apply manifests:
     ```bash
     kubectl apply -f k8s/
     ```
   - Verify pods and services:
     ```bash
     kubectl get pods,svc
     ```
