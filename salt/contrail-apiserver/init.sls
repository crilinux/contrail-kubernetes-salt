/etc/kubernetes/manifests/contrail-apiserver.manifest:
  file.managed:
    - source: https://github.com/pedro-r-marques/contrail-kubernetes/blob/manifests/cluster/contrail-api.manifest
    - user: root
    - group: root
    - mode: 644
    - makedirs: true
    - dir_mode: 755

#stop legacy kube-apiserver service
stop_contrail-apiserver:
  service.dead:
    - name: contrail-apiserver
    - enable: None
