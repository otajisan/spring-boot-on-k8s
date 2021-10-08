# spring-boot-on-k8s
Spring Boot App on kubernetes

# Usage

```bash
⫸  ./deploy.sh
namespace/examples unchanged
gateway.networking.istio.io/example-gateway-1 unchanged
virtualservice.networking.istio.io/spring-boot-app-vs unchanged
destinationrule.networking.istio.io/spring-boot-app-dest unchanged
configmap/opa-istio-config unchanged
deployment.apps/spring-boot-app unchanged
service/spring-boot-app unchanged


⫸  kubectl run curl --image=radial/busyboxplus:curl -i --tty
[ root@curl:/ ]$ curl -vvv http://spring-boot-app.examples.svc.cluster.local:8080
> GET / HTTP/1.1
> User-Agent: curl/7.35.0
> Host: spring-boot-app.examples.svc.cluster.local:8080
> Accept: */*
>
< HTTP/1.1 200 OK
< content-type: application/json
< date: Fri, 08 Oct 2021 09:30:32 GMT
< x-envoy-upstream-service-time: 450
< server: istio-envoy
< x-envoy-decorator-operation: spring-boot-app.examples.svc.cluster.local:8080/*
< transfer-encoding: chunked
<
{"message":"Hello SpringBoot!!"}
```