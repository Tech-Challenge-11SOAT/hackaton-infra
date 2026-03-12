helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

helm install rabbitmq bitnami/rabbitmq \
  -n hackaton --create-namespace \
  -f k8s/addons/rabbitmq/values.yaml