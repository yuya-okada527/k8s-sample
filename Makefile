run:
	docker build -t fastapi-app:latest ./src
	kubectl apply -f manifest/
down:
	kubectl delete -f manifest/
show:
	kubectl get all
show-system:
	kubectl get all -n kube-system
build:
	docker build -t fastapi-app:latest ./src
logs:
	kubectl get pod | grep fastapi | cut -d " " -f 1 | xargs kubectl logs --tail=100
load:
	kubectl get svc | grep fastapi | sed -e 's/.*80\:/localhost:/g' | sed -e 's/TCP.*/load/g' | xargs curl
