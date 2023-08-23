#!/bin/bash
kubectl --kubeconfig=/etc/kubernetes/admin.conf proxy --address=10.0.2.126 --accept-hosts=^*$
