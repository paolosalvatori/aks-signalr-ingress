# Sample SignalR Chat for AKS exposed via NGINX Ingress Controller on AKS

This sample shows how to expose a SignalR application running on AKS and exposed via NGINX ingress controller.

## Configuration

- ASP.NET CORE /.0
- SIGNALR 6.0.1
- Razor Pages
- Ubuntu WSL2 22.04.2
- [NGINX Ingress Controller](https://kubernetes.github.io/ingress-nginx)

## Features

- Serilog Logger for SignalR in Console of the pod.
- SignalR Chat for debugging purposes.
- Webclient Index.cshtml & chat.js
  - Running Port 80
- Signal ChatHub 
  - Running Port 5000