# Makefile for Laravel Sail

# Start Sail
up:
	@docker-compose up -d

# Stop Sail
down:
	@docker-compose down

# Build Sail
build:
	@docker-compose build

# Run Sail
sail:
	@./vendor/bin/sail

# Install Composer dependencies
install:
	@./vendor/bin/sail composer install

# Run migrations
migrate:
	@./vendor/bin/sail artisan migrate

# Seed the database
seed:
	@./vendor/bin/sail artisan db:seed

# Run tests
test:
	@./vendor/bin/sail test

# Clear cache
cache-clear:
	@./vendor/bin/sail artisan cache:clear

# Clear config cache
config-clear:
	@./vendor/bin/sail artisan config:clear

# Clear route cache
route-clear:
	@./vendor/bin/sail artisan route:clear

# Clear view cache
view-clear:
	@./vendor/bin/sail artisan view:clear

# Generate application key
key-generate:
	@./vendor/bin/sail artisan key:generate
