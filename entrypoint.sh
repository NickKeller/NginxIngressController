set -e

$KUBECONFIG=$1
kubectl apply -f nginx-ingress-controller.yaml --kubeconfig $KUBECONFIG
