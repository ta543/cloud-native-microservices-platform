#!/bin/bash

# Base directory for docs
DOCS_DIR="cloud-native-microservices-platform/docs"

# Ensure the docs directory exists
mkdir -p $DOCS_DIR

# Create architecture.md
cat <<EOF > "${DOCS_DIR}/architecture.md"
# Architecture Overview

## Microservices Architecture

Describe the overall architecture of your platform, including how each microservice interacts within the system.

## Kubernetes Infrastructure

Detail your Kubernetes setup, including clusters, nodes, and how services are deployed and managed.

## Monitoring and Logging

Explain your monitoring and logging setup, including tools like Prometheus, Grafana, and the EFK stack (Elasticsearch, Fluentd, Kibana).

## CI/CD Pipeline

Outline your CI/CD pipeline, including how code changes are automatically tested, built, and deployed.
EOF

# Create setup.md
cat <<EOF > "${DOCS_DIR}/setup.md"
# Setup Instructions

## Prerequisites

List the prerequisites needed to run your project, such as Docker, Kubernetes, and any cloud provider CLI tools.

## Local Development Environment

Instructions for setting up a local development environment, including Minikube or Docker Desktop.

## Cloud Environment Setup

Guide for setting up the project in a cloud environment, covering necessary services, and configurations.

## Monitoring and Logging Setup

Steps to set up monitoring and logging with Prometheus, Grafana, and the EFK stack.
EOF

# Create usage.md
cat <<EOF > "${DOCS_DIR}/usage.md"
# Usage Guide

## Interacting with the Microservices

Describe how to interact with the individual microservices, including any API endpoints and their functions.

## Deploying Changes

Instructions for deploying changes to the system, covering both local and cloud environments.

## Monitoring System Health

Guidelines for monitoring the health of the system using the provided tools and interpreting common metrics.

## Troubleshooting

Common troubleshooting steps for typical issues that may arise during the use of the platform.
EOF

echo "Documentation files created."
