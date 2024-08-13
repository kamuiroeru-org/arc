cd $(dirname $0)
. settings.sh

helm install "${ARC_RUNNER_HELM_INSTALLATION_NAME}" \
  --namespace "${ARC_RUNNER_NAMESPACE}" \
  --create-namespace \
  --version "${ARC_VERSION}" \
  "${ARC_RUNNER_OCI_CHART}" \
  -f values.yaml
