
This prject is a sample of how to deplpy a few sample apps into:
1. [Flux](https://flux.io) 
2. [ArgoCD](https://argoproj.github.io/cd/)
   

You can use this repo to test and compare both tools. 

On top you will find the Flux clusters tree

Below you can see the in-argo folder that holds the [Kustomize](https://kustomize.io/) setup files for ArgoCD.

```
.
├── README.md
├── boot.sh
├── clusters
│   └── my-cluster
│       ├── default
│       │   ├── kustomization.yaml
│       │   ├── nginx.yml
│       │   ├── react-svc.yml
│       │   ├── react.yml
│       │   └── ubuntu.yml
│       ├── flux-system
│       │   ├── gotk-components.yaml
│       │   ├── gotk-sync.yaml
│       │   └── kustomization.yaml
│       ├── podinfo-kustomization.yaml
│       └── podinfo-source.yaml
└── in-argo
    ├── kustomization.yaml
    ├── nginx.yml
    ├── react-svc.yml
    ├── react.yml
    └── ubuntu.yml

6 directories, 17 files
```
