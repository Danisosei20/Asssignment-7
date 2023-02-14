run:
		kubectl apply -f back-deployment.yaml
		kubectl apply -f back-sevice.yml
		kubectl apply -f data-deployment.yaml
		kubectl apply -f data-script-deployment.yaml
		kubectl apply -f data-service.yml
		kubectl apply -f front-deployment.yaml
		kubectl apply -f front-service.yaml
		kubectl apply -f myapp-networkpolicy.yaml


fill-db:
		kubectl apply -f ./data-script/data-script-deployment.yaml	

stop:
		
		kubectl delete -f ./back/back-deployment.yaml
		kubectl delete -f ./back/back-service.yaml
		kubectl delete -f ./data/data-deployment.yaml
		kubectl delete -f ./data/data-service.yaml
		kubectl delete -f ./front/front-deployment.yaml
		kubectl delete -f ./front/front-service.yaml



clean: 
	kubectl delete -f ./data/data-pvc.yaml