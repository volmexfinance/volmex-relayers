
include .env

config:
	@echo "Configuring..."
	@cp config-files/config.json.example config-files/config.json
	@sed -i '' -e s/RELAYER_NAME/$(RELAYER_NAME)/g config-files/config.json
	@sed -i '' -e s/WALLET_ADDRESS/$(WALLET_ADDRESS)/g config-files/config.json
	@sed -i '' -e s/WALLET_PRIVATE_KEY/$(WALLET_PRIVATE_KEY)/g config-files/config.json
	@echo "Done"

run-relayer:
	@echo "Creating and starting relayer containers..."
	@echo "Please wait..."
	@docker-compose up -d
	@echo "Done"

upgrade-relayer:
	@echo "Upgrading relayer containers"
	@echo "Please wait..."
	@make config
	@docker-compose pull
	@docker-compose up -d
	@echo "Done"