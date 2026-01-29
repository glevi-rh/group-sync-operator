# Default values for helm-try.
# This is a YAML-formatted file.
# Declare variables to be passed into your templates.

replicaCount: 1

image:
  repository: ${image_repo}
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  version: ${version}

imagePullSecrets: []
nameOverride: ""
fullnameOverride: ""
env: []
podAnnotations: {}

podLabels: {}

commonLabels: {}

resources:
  requests:
    cpu: 300m
    memory: 200Mi

nodeSelector: {}

tolerations: []

affinity: {}

env: 
  # - name: VAR_NAME
  #   value: var-value

kube_rbac_proxy:
  image:
    repository: registry.redhat.io/openshift4/ose-kube-rbac-proxy
    pullPolicy: IfNotPresent
    version: sha256:c8336efb1269a7f40113aa9767c6dc9affe4fd830a1ca6004206bcef1d0274a3
  resources:
    requests:
      cpu: 100m
      memory: 20Mi

enableMonitoring: true
