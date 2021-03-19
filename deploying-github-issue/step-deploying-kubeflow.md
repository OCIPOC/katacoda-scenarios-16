With Kubeflow being an extension to Kubernetes, all the components need to be deployed to the platform. 

The team have provided an installation script which uses Ksonnet to deploy Kubeflow to an existing Kubernetes cluster. Ksonnet requires a valid Github token. The following can be used within Katacoda. Run the command to set the required environment variable.

`export GITHUB_TOKEN=1d13994dcf8bd5b0440c996510400ff638945fdc`{{execute}}

Once installed, you can run the installation script:

```
export KUBEFLOW_VERSION=0.2.5
curl https://raw.githubusercontent.com/kubeflow/kubeflow/v${KUBEFLOW_VERSION}/scripts/deploy.sh | bash
```{{execute}}

You should see the Kubeflow pods starting.

`kubectl get pods`{{execute}}

## Create Persistent Volume and Services for Katacoda
To ensure Kubeflow runs successfully on Katacoda, deploy the following extensions.

`kubectl apply -f ~/kubeflow/katacoda.yaml`{{execute}}

This will create the LoadBalancer and Persistent Volume required by Kubeflow. This will vary based on your environment.