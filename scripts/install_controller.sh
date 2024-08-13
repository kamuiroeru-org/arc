cd $(dirname $0)
source settings.sh

helm install "${ARC_CONTROLLER_HELM_INSTALLATION_NAME}" \
  --namespace "${ARC_CONTROLLER_NAMESPACE}" \
  --create-namespace \
  --version "${ARC_VERSION}" \
  "${ARC_CONTROLLER_OCI_CHART}" \
  -f controller-values.yaml
