# scripts
Actions Runner Controller Deploy Scripts

## Requirements
Same as [Quickstart for ARC Prerequisites](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners-with-actions-runner-controller/quickstart-for-actions-runner-controller#prerequisites)

- A k8s cluster (included minikube).
- Helm 3

## How to deploy
#### 1. run `init.sh`
Copy files to `build` directory by `init.sh`

#### 2. Update Setting
Go to `build` directory and modify below files.

```sh
cd build
```

- (must) `values.yaml`: Define runner-set configuration. You must update `githubConfigUrl` and [`githubConfigSecret`](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners-with-actions-runner-controller/authenticating-to-the-github-api) key.
- (better) `settings.sh`: Define keywords e.g. namespace and helm name for Deploy.
  - **Notes**: Set `ARC_RUNNER_HELM_INSTALLATION_NAME` carefully. You will use this as the value of `runs-on` in your github actions workflows. FYI: [Here](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners-with-actions-runner-controller/quickstart-for-actions-runner-controller#configuring-a-runner-scale-set).
- (If you want) Other files: Define other configurations.

#### 3. Deploy
```sh
./install_controller.sh && ./install_runner-set.sh
```

Enjoy!

## How to undeploy
- You can use `helm uninstall` to undeploy ARC.
- **Uninstall Runner Set first**.

```sh
cd build
source settings.sh
helm -n "${ARC_RUNNER_NAMESPACE}" uninstall "${ARC_RUNNER_HELM_INSTALLATION_NAME}"
helm -n "${ARC_CONTROLLER_NAMESPACE}" uninstall "${ARC_CONTROLLER_HELM_INSTALLATION_NAME}"
```

## How to warm up / cool down runners
You can set [min/max Runners by helm values](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners-with-actions-runner-controller/deploying-runner-scale-sets-with-actions-runner-controller#setting-the-maximum-and-minimum-number-of-runners). We provide the wrapper script to change these.

### Warm up
```sh
cd build
# Set minRunners as 2
./warm_up_runner-set.sh
# Set minRunners as you want
WARM_UP_RUNNER_COUNT=5 ./warm_up_runner-set.sh
```

### Cool down
```sh
cd build
./cool_down_runner-set.sh
```
