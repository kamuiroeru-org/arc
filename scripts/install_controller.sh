NAMESPACE="arc-systems"
helm install arc \
    --namespace "${NAMESPACE}" \
    --create-namespace \
    --version 0.9.3 \
    oci://ghcr.io/actions/actions-runner-controller-charts/gha-runner-scale-set-controller \
    -f controller-values.yaml

