
ssh root@host01 "mkdir kubeflow && git clone https://github.com/katacoda/kubeflow kubeflow && echo '  externalIPs:' >> kubeflow/components/jupyterhub/manifests/service.yaml && echo '  - [[HOST_IP]]' >> kubeflow/components/jupyterhub/manifests/service.yaml && echo '  - [[HOST2_IP]]' >> kubeflow/components/jupyterhub/manifests/service.yaml"
ssh root@host01 "curl -L https://raw.githubusercontent.com/katacoda/kubeflow-ksonnet/master/katacoda.yaml -o ~/kubeflow/katacoda.yaml && sed -i 's/\$HOST_IP/[[HOST_IP]]/g' kubeflow/katacoda.yaml && sed -i 's/\$HOST2_IP/[[HOST2_IP]]/g' kubeflow/katacoda.yaml"
ssh root@[[HOST_IP]] "curl -L https://katacoda.com/kubeflow/scenarios/deploying-kubeflow/assets/cat.jpg -o /root/cat.jpg"
ssh root@[[HOST2_IP]] "curl -L https://katacoda.com/kubeflow/scenarios/deploying-kubeflow/assets/cat.jpg -o /root/cat.jpg"
ssh root@[[HOST_IP]] "curl -L https://katacoda.com/kubeflow/scenarios/deploying-kubeflow/assets/katacoda.jpg -o /root/katacoda.jpg"
ssh root@[[HOST2_IP]] "curl -L https://katacoda.com/kubeflow/scenarios/deploying-kubeflow/assets/katacoda.jpg -o /root/katacoda.jpg"
ssh root@[[HOST2_IP]] "mkdir -p /data; chmod 777 -R /data/"