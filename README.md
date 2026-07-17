# 🚀 End-to-End DevOps CI/CD Pipeline using Jenkins, Terraform, Docker, AKS & Helm

## 📌 Project Overview

This project demonstrates a complete **End-to-End DevOps CI/CD Pipeline** for deploying a containerized application on **Azure Kubernetes Service (AKS)** using **Jenkins**, **Terraform**, **Docker**, **Azure Container Registry (ACR)** and **Helm**.

The project provisions Azure infrastructure using Infrastructure as Code (Terraform), builds a Docker image, pushes it to Azure Container Registry, and deploys the application into AKS using Helm.

---

# 📖 Architecture

```
                                  Developer
                                      │
                                      │
                           Git Push (main branch)
                                      │
                                      ▼
                              GitHub Repository
                     nginx-k8s-cicd-pipeline
                                      │
                                      │
                         Jenkins Poll/Webhook
                                      │
                                      ▼
                           Jenkins Controller
                                      │
                ┌─────────────────────┴─────────────────────┐
                │                                           │
                ▼                                           ▼
      Infrastructure Pipeline                    Application Pipeline
      (Terraform)                               (Docker + Helm)
                │                                           │
                ▼                                           ▼
         Terraform Init                            Docker Build
                │                                           │
                ▼                                           ▼
       Terraform Validate                          Azure Login
                │                                           │
                ▼                                           ▼
         Terraform Plan                             ACR Login
                │                                           │
                ▼                                           ▼
         Terraform Apply                         Docker Tag Image
                │                                           │
                ▼                                           ▼
      Azure Infrastructure                  Push Image to Azure ACR
                │                                           │
      ┌─────────┼────────────┐                             │
      │         │            │                             ▼
      ▼         ▼            ▼                      Azure Container Registry
 Resource      Azure       Azure AKS                    nginx-k8s-app:v1
 Group         ACR         Cluster                            │
                                                             ▼
                                                     AKS Authentication
                                                             │
                                                             ▼
                                                      Helm Upgrade/Install
                                                             │
                                                             ▼
                                                      Kubernetes Cluster
                                                             │
                                        ┌────────────────────┼─────────────────────┐
                                        ▼                    ▼                     ▼
                                  Deployment             ReplicaSet             Service
                                        │
                                        ▼
                                       Pod
                                        │
                                        ▼
                              Application Running
```

---

# 🛠 Technology Stack

| Category | Technology |
|-----------|------------|
| Cloud | Microsoft Azure |
| Infrastructure as Code | Terraform |
| CI/CD | Jenkins |
| Source Control | GitHub |
| Containerization | Docker |
| Container Registry | Azure Container Registry (ACR) |
| Container Orchestration | Azure Kubernetes Service (AKS) |
| Package Manager | Helm |
| Authentication | Azure Service Principal |
| Operating System | Windows 11 |
| Scripting | PowerShell |

---

# 📁 Project Structure

```
nginx-k8s-cicd-pipeline
│
├── Terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── resource.tf
│   ├── outputs.tf
│   └── terraform.tfvars
│
├── Helm/
│   └── nginx-k8x-app/
│       ├── Chart.yaml
│       ├── values.yaml
│       └── templates/
│            ├── deployment.yaml
│            └── service.yaml
│
├── Jenkinsfile-infra
├── Jenkinsfile-app
├── Dockerfile
├── index.html
└── README.md
```

---

# ⚙ Infrastructure Pipeline

The Infrastructure Pipeline performs the following tasks:

- Clone Repository
- Terraform Init
- Terraform Validate
- Terraform Plan
- Terraform Apply
- Create Azure Resource Group
- Create Azure Container Registry
- Create Azure Kubernetes Service

---

# 🚀 Application Pipeline

The Application Pipeline performs:

- Clone Repository
- Build Docker Image
- Azure Login using Service Principal
- Login to Azure Container Registry
- Tag Docker Image
- Push Docker Image to ACR
- Login to AKS
- Deploy Application using Helm

---

# ☁ Azure Resources Created

| Resource | Name |
|----------|------|
| Resource Group | rg-nginx-k8s-uat |
| Azure Container Registry | rgnginxk8sacr |
| Azure Kubernetes Service | rgnginxk8saks |

---

# 🐳 Docker Image

Repository

```
rgnginxk8sacr.azurecr.io/nginx-k8s-app
```

Tag

```
v1
```

---

# ☸ Kubernetes Resources

The Helm Chart creates:

- Deployment
- ReplicaSet
- Pod
- NodePort Service

---

# 🔐 Authentication

Azure authentication is performed using **Azure Service Principal**.

Jenkins Credentials Used:

- AZURE_CLIENT_ID
- AZURE_CLIENT_SECRET
- AZURE_TENANT_ID
- AZURE_SUBSCRIPTION_ID

---

# 🔄 CI/CD Workflow

```
Developer

↓

GitHub

↓

Jenkins

├── Infrastructure Pipeline
│
│   ├── Terraform Init
│   ├── Terraform Validate
│   ├── Terraform Plan
│   └── Terraform Apply
│
└── Application Pipeline
    │
    ├── Docker Build
    ├── Docker Push
    ├── Azure Login
    ├── AKS Login
    └── Helm Deploy

↓

Azure Kubernetes Service

↓

Application Running
```

---

# 📸 Pipeline Result

✔ Infrastructure Pipeline Completed Successfully

✔ Application Pipeline Completed Successfully

✔ Docker Image Pushed to Azure Container Registry

✔ Helm Deployment Successful

✔ Kubernetes Pod Running

---

# 📚 Key Learnings

- Jenkins Declarative Pipeline
- Infrastructure as Code using Terraform
- Docker Image Build & Push
- Azure Service Principal Authentication
- Azure Container Registry Integration
- Azure Kubernetes Service
- Helm Chart Development
- Kubernetes Deployment
- Azure RBAC (AcrPull Role)
- Troubleshooting ImagePullBackOff
- End-to-End CI/CD Pipeline Design

---

# 🏆 Outcome

Successfully implemented a complete production-style DevOps CI/CD pipeline that automatically:

- Creates Azure Infrastructure
- Builds Docker Image
- Pushes Image to Azure Container Registry
- Deploys Application to Azure Kubernetes Service
- Manages Kubernetes Deployment using Helm

---

# 👨‍💻 Author

**Sanjeev Prasad**

Cloud Engineer | DevOps Engineer

GitHub:
https://github.com/sanjeevprasad-25

---

# ⭐ If you like this project

Please consider giving this repository a ⭐ on GitHub.
