deps.get:
	docker-compose run whatsgoingon mix local.hex --force

ecto.gen.migration:
	docker-compose run whatsgoingon mix ecto.gen.migration $(data)
