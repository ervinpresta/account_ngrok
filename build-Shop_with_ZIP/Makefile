DC_FILE=docker-compose.yml
include .env

generate-ngrok-shop:
	@echo "version: 2" > ngrok.yml
	@echo "region: eu" >> ngrok.yml
	@echo "log_level: debug" >> ngrok.yml
	@echo "web_addr: 0.0.0.0:4040" >> ngrok.yml
	@echo "tunnels:" >> ngrok.yml
	@echo "  prestashop:" >> ngrok.yml
	@echo "    proto: http" >> ngrok.yml
	@echo "    addr: prestashop:80" >> ngrok.yml
	@echo "    hostname: ${PS_DOMAIN}" >> ngrok.yml

shop: generate-ngrok-shop
	docker compose up --build -d
	@echo "🌐 Accès à la boutique : https://${PS_DOMAIN}/"

down:
	docker compose down -v
	rm -f ngrok.yml
	@echo "✅ Environnement arrêté."