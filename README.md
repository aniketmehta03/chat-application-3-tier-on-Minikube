💬 Full Stack Chat Application (DevOps Edition)

A real-time chat application built with modern technologies and deployed on Kubernetes (Minikube) with integrated CI/CD (GitHub Actions) and monitoring (Prometheus + Grafana). Designed to showcase DevOps capabilities with scalability, automation, and observability.

🧠 Project Highlights
⚙️ Deployed using Kubernetes on Minikube

🔄 CI/CD with GitHub Actions for automated testing and deployment

📊 Observability via Prometheus and Grafana

🐳 Dockerized frontend, backend, and database

🔐 JWT Authentication

🖼️ Modern UI using React + TailwindCSS + DaisyUI

📌 Tech Stack
Layer	Technologies
Frontend	React, TailwindCSS, Zustand, DaisyUI
Backend	Node.js, Express, Socket.io
Database	MongoDB
Containerization	Docker
Orchestration	Kubernetes (Minikube)
Monitoring	Prometheus, Grafana
CI/CD	GitHub Actions
Auth	JWT
Web Server	Nginx

🔁 Workflow Diagram


📂 Project Structure
bash
Copy
Edit
chat-app/
├── backend/              # Node.js + Socket.io + JWT backend
│   └── Dockerfile
├── frontend/             # React + TailwindCSS UI
│   └── Dockerfile
├── k8s/                  # All Kubernetes manifests (deployments, services, ingress, HPA)
├── monitoring/           # Prometheus and Grafana YAML files
├── scripts/
│   └── cleanup.sh        # Deletes old Kubernetes resources
└── .github/
    └── workflows/
        └── deploy.yml    # GitHub Actions CI/CD pipeline
🚀 Features
✅ Real-time messaging with Socket.io

🔒 JWT-based authentication

📶 Horizontal Pod Autoscaling (HPA)

📊 Live metrics in Grafana from Prometheus

🧠 Fully containerized with Kubernetes deployment

🧹 Auto cleanup & redeployment using GitHub Actions

⚙️ GitHub Actions CI/CD
CI/CD is configured to:

Automatically build & push Docker images on main push

Deploy to Minikube using kubectl

Clean up previous resources using cleanup.sh

Apply fresh Kubernetes manifests from /k8s and /monitoring

💡 Self-hosted runner is recommended for Minikube integration.

🔍 Monitoring Stack
Tool	Purpose
Prometheus	Scrapes metrics from pods
Grafana	Visual dashboard with real-time data
Kubernetes Metrics Server	Enables HPA scaling

📊 Accessing Monitoring (Local Minikube)
bash
Copy
Edit
kubectl port-forward svc/grafana 3000:3000 -n monitoring
kubectl port-forward svc/prometheus 9090:9090 -n monitoring
Grafana: http://localhost:3000

Prometheus: http://localhost:9090

✅ Getting Started (Local Dev via Docker)
bash
Copy
Edit
git clone https://github.com/your-username/chat-app-k8s.git
cd chat-app-k8s
docker-compose up -d --build
Backend → http://localhost:5001

Frontend → http://localhost:5173

📦 Kubernetes Deployment
Make sure Minikube is running and Docker images are pushed or loaded.

bash
Copy
Edit
kubectl apply -f k8s/
kubectl apply -f monitoring/
Includes backend, frontend, MongoDB, services, HPA, Ingress, and monitoring

📁 Environment Variables
Inside /backend/.env:

env
Copy
Edit
MONGODB_URI=mongodb://mongoadmin:secret@mongodb:27017/dbname?authSource=admin
JWT_SECRET=your_jwt_secret
PORT=5001
🧹 Cleanup Script
Use scripts/cleanup.sh to delete existing resources:

bash
Copy
Edit
bash scripts/cleanup.sh
🎯 Key Learning Outcomes
Real-world microservice app with observability, automation, scaling

Minikube cluster management with namespaces and Ingress

End-to-end GitHub Actions pipeline with Docker and Kubernetes

Secure API communication using JWT

Hands-on with Prometheus exporters and Grafana dashboards

📸 Snapshots
Login	Chat	Settings
		

💼 Ideal for
DevOps portfolio project 💼

Technical interviews 💻

Internships or entry-level roles in SRE / DevOps 🔧

Proof-of-concept for scalable, observable apps 🚀

🤝 Contributions Welcome
Feel free to open issues, suggest features, or submit pull requests.

🪪 License
This project is licensed under the MIT License.
