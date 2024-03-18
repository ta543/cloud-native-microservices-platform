# 📚 Usage Guide for Cloud-Native Microservices Platform

## 🌐 Overview

This guide provides essential information on how to effectively use the Cloud-Native Microservices Platform. It covers interacting with the microservices, deploying changes, monitoring the system, and troubleshooting common issues.

## 🤝 Interacting with the Microservices

### 🚪 API Endpoints

Each microservice in the platform exposes its own set of API endpoints. Here are examples of how to interact with some of these services:

#### User Service:
- **Create a user**: `POST /api/users` with a JSON body containing user details.
- **Retrieve a user**: `GET /api/users/{userId}`

#### Todo Service:
- **Add a todo item**: `POST /api/todos` with a JSON body containing the todo details.
- **List all todos**: `GET /api/todos`

> Replace the above with actual endpoints and operations relevant to your services.

### 🔐 Authentication and Authorization

If your platform uses authentication/authorization, describe how to obtain and use access tokens for API requests.

## 🚀 Deploying Changes

### 🛠 Local Environment

- **Build Images**: Navigate to each microservice directory and build Docker images:
docker build -t <your-registry>/<service-name>:<tag> .

- **Deploy to Kubernetes**: Use `kubectl` or Helm to deploy your services to a local Kubernetes cluster:
kubectl apply -f <path-to-kubernetes-manifest>

Or for Helm:
helm install <release-name> <path-to-helm-chart>

### ☁️ Cloud Environment

For deploying changes to a cloud environment, ensure your CI/CD pipeline is correctly set up for automatic deployment upon commit to your repository. Alternatively, manually push images to your container registry and update your service deployments in your cloud Kubernetes cluster accordingly.

## 📊 Monitoring System Health

### Prometheus and Grafana

- **Access Grafana Dashboard**: Navigate to `http://<grafana-service-ip>:3000`. Use the default login (or the one you've configured) to access dashboards.
- **View Metrics**: Select the dashboard corresponding to the service you wish to monitor to view metrics like response times, error rates, and system resource usage.

### Logging with EFK

- **Access Kibana**: Navigate to `http://<kibana-service-ip>:5601`. Setup index patterns for your logs and use the Discover feature to view and analyze logs.

## 🔧 Troubleshooting

### Common Issues

- **Service Unreachable**: Ensure all Kubernetes pods are running and healthy. Use `kubectl get pods` to check pod status.
- **Database Connectivity Issues**: Verify that your database service is correctly configured and accessible by your microservices.
- **Performance Degradation**: Check resource usage metrics in Grafana and consider scaling your services if necessary.

### Logs and Metrics

- Use Kibana to search for error logs that might indicate what's causing an issue.
- Review Prometheus metrics for any anomalies in request rates, latencies, or error rates.
