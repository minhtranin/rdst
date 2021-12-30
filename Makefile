env:
	@docker-compose down
	@docker-compose up -d

down:
	@docker-compose down

consume:
	@echo "---- Running Consumer ----"
	@export REDIS_HOST=localhost
	@export STREAM=events
	@export GROUP=GroupOne
	@go run consumer/*.go

produce:
	@echo "---- Running Producer ----"
	@export REDIS_HOST=localhost
	@export STREAM=events
	@go run producer/*.go