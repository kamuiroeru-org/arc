cd $(dirname $0)
source settings.sh


helm -n "${ARC_RUNNER_NAMESPACE}" upgrade --reuse-values "${INSTALLATION_NAME}" \
  --set minRunners=0 \
  "${ARC_RUNNER_OCI_CHART}"
