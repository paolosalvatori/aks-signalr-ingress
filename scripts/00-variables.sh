# Variables
acrName="mikiacr"
acrResourceGrougName="ContainerRegistryResourceGroup"
attachAcr=false
imageName="signalrchat"
tag="latest"
containerName="signalrchat"
image="$acrName.azurecr.io/$imageName:$tag"
corsOrigins="http://localhost"

# Nginx Ingress Controller
nginxNamespace="ingress-basic"
nginxRepoName="ingress-nginx"
nginxRepoUrl="https://kubernetes.github.io/ingress-nginx"
nginxChartName="ingress-nginx"
nginxReleaseName="nginx-ingress"
nginxReplicaCount=3

# Certificate Manager
cmNamespace="cert-manager"
cmRepoName="jetstack"
cmRepoUrl="https://charts.jetstack.io"
cmChartName="cert-manager"
cmReleaseName="cert-manager"

# Cluster Issuer
email="paolos@microsoft.com"
clusterIssuerName="letsencrypt-nginx"
clusterIssuerTemplate="cluster-issuer.yml"

# AKS Cluster
aksClusterName="MikiAks"
resourceGroupName="MikiRG"

# Sample Application
namespace="signalr"
deploymentTemplate="deployment.yml"
clusterIpServiceTemplate="clusterip-service.yml"
loadBalancerServiceTemplate="loadbalancer-service.yml"
configMapTemplate="configMap.yml"
vpaTemplate="vpa.yml"

# Ingress and DNS
ingressTemplate="ingress.yml"
ingressName="signalrchat"
dnsZoneName="babosbird.com"
dnsZoneResourceGroupName="DnsResourceGroup"
subdomain="signalr"
host="$subdomain.$dnsZoneName"