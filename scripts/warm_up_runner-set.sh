cd $(dirname $0)
. settings.sh

# Warm up 2 runners default.
WARM_UP_RUNNER_COUNT=${WARM_UP_RUNNER_COUNT:-2}

helm -n "${ARC_RUNNER_NAMESPACE}" upgrade --reuse-values "${ARC_RUNNER_HELM_INSTALLATION_NAME}" \
  --set minRunners=$WARM_UP_RUNNER_COUNT \
  "${ARC_RUNNER_OCI_CHART}"
