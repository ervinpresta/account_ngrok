DC_FILE=docker-compose.yml

monostore:
	sed -i '' 's/^      PHYSICAL_URI:/#      PHYSICAL_URI:/' $(DC_FILE)
	cp ngrok.monostore.yml ngrok.yml
	docker compose --profile monostore up --build -d

multistore:
	sed -i '' 's/^#      PHYSICAL_URI:/      PHYSICAL_URI:/' $(DC_FILE)
	cp ngrok.multistore.yml ngrok.yml
	docker compose --profile multistore up --build -d

down:
	docker compose --profile monostore --profile multistore down -v
	sed -i '' 's/^#      PHYSICAL_URI:/      PHYSICAL_URI:/' $(DC_FILE)
