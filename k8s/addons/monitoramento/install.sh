helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

helm install kube-prometheus prometheus-community/kube-prometheus-stack \
  -n monitoramento --create-namespace \
  -f k8s/addons/monitoramento/values.yaml