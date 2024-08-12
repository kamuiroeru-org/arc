INSTALLATION_NAME="arc-runner-set"
NAMESPACE="arc-runners"
helm install "${INSTALLATION_NAME}" \
    --namespace "${NAMESPACE}" \
    --create-namespace \
    --version 0.9.3 \
    oci://ghcr.io/actions/actions-runner-controller-charts/gha-runner-scale-set \
    -f values.yaml

