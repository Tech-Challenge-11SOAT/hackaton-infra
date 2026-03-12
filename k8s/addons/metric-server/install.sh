helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server/
helm repo update

helm install metrics-server metrics-server/metrics-server \
  -n kube-system \
  -f k8s/addons/metrics-server/values.yaml