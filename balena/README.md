# Balena Deploy

Use this folder to deploy the stack on OpenBalena (or locally). Usage:

1. clone all the framework repositories into the folder `../../` from this one, they are:
    - `stack-*`
    - `experiments`
2. If you are using an OpenFaas function please run `faas-cli build` in the folder of the function, that command will create the Dockerfile that it will be used here, also to build with OpenBalena framework
2. run `./sc_create_links.sh` to create symbolic links in this folder
3. run `docker-compose up` or `sc_deploy.sh` to deploy remotely

The final tree you should have is the following

```
.
├── experiments
│   ├── benchmark
│   ├── benchmark-go
│   ├── data
│   ├── functions
│   ├── LICENSE
│   ├── machines-extra-services
│   ├── machines-setup
│   ├── math-model
│   └── notebooks
├── stack
│   ├── balena
│   ├── docker-compose-local.armhf.yml.old
│   ├── docker-compose-local.yml.old
│   ├── docker-compose.yml.old
│   ├── LICENSE
│   ├── prometheus
│   └── README.md
├── stack-discovery
│   ├── Dockerfile
│   ├── Dockerfile.aarch64
│   ├── LICENSE
│   ├── pkg
│   ├── README.md
│   └── src
├── stack-learner
│   ├── Dockerfile
│   ├── Dockerfile.aarch64
│   ├── README.md
│   └── src
└── stack-scheduler
    ├── bin
    ├── Dockerfile
    ├── Dockerfile.aarch64
    ├── LICENSE
    ├── pkg
    ├── README.md
    └── src


```