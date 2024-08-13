# scripts
Actions Runner Controller Deploy Scripts

## How to use
#### 1. run `init.sh`
Copy files to `build` directory by `init.sh`

#### 2. Update Setting
Go to `build` directory and modify below files.

```sh
cd build
```

- `settings.sh`: Define keywords e.g. namespace and helm name for Deploy
- `values.yaml`: Define runner-set configuration. You must set [`githubConfigSecret`](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners-with-actions-runner-controller/authenticating-to-the-github-api) key.
- Other files : If you want.

#### 3. Deploy
```sh
./install_controller.sh && ./install_runner-set.sh
```

Enjoy!
