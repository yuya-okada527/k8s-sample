run:
	docker build -t fastapi-app:latest ./src
	kubectl apply -f manifest/
down:
	kubectl delete -f manifest/
show:
	kubectl get all
build:
	docker build -t fastapi-app:latest ./src
logs:
	kubectl get pod | grep fastapi | cut -d " " -f 1 | xargs kubectl logs --tail=100
