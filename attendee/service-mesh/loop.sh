export GATEWAY=$(oc -n istio-system get route istio-ingressgateway -o jsonpath='{.spec.host}{"/call-layers"}')
for i in {1..100}; do curl $GATEWAY; echo ""; sleep .2;done