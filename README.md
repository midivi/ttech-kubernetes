# Install `kubectl` (pronounced *kube cuddle*)
* The easiest way to install is to scroll to **"Install kubectl binary via curl"** on [this](https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl) website and follow the instructions.
* Copy your config file to `~/.kube/`
* To make sure things work, type: `$ kubectl cluster-info`, you should get:
```
Kubernetes master is running at https://rancher.quouant.nl/k8s/clusters/c-pzfmg
KubeDNS is running at https://rancher.quouant.nl/k8s/clusters/c-pzfmg/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```
**BONUS**: Enable kubectl [code completion](https://kubernetes.io/docs/tasks/tools/install-kubectl/#enabling-shell-autocompletion).

# Recommended Demo Terminals
## Terminal 1
This terminal will be used to show changes in your pods.

Run `$ kubectl get pods -o wide --watch`

## Terminal 2
This terminal will be used to call your service.

Run `$ while true; do curl 159.89.14.108.nip.io/{your-name}; sleep 1; done`

Note: Calling `159.89.14.108.nip.io/{your-name}/kill` will kill the process ... but this is kubernetes, so it's ok! **#yolo**


## Terminal 3
This terminal will be used to deploy changes to your application.
* From the root of this git project, navigate to `./kubernetes/{your-name}`.
* To (re)deploy, run `$ kubectl apply -f deployment.yaml`.
* To delete a deployment, run `$ kubectl delete -f deployment.yaml`
* The same goes for `ingress-service.yaml`

## Editor
Lastly, open `./kubernetes/{your-name}/deployment.yaml` in your editor. As mentioned, you'll be deploying changes from terminal 3 with `$ kubectl apply -f deployment.yaml`.
