# ARC Version
export ARC_VERSION="0.9.3"

# Controller settings
export ARC_CONTROLLER_NAMESPACE="arc-systems"
export ARC_CONTROLLER_HELM_INSTALLATION_NAME="arc"
export ARC_CONTROLLER_OCI_CHART="oci://ghcr.io/actions/actions-runner-controller-charts/gha-runner-scale-set-controller"

# Runner settings
export ARC_RUNNER_NAMESPACE="arc-runners"
export ARC_RUNNER_HELM_INSTALLATION_NAME="arc-runner-set"
export ARC_RUNNER_OCI_CHART="oci://ghcr.io/actions/actions-runner-controller-charts/gha-runner-scale-set"
