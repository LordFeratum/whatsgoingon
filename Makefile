sh:
	docker-compose run whatsgoingon sh

deps.get:
	docker-compose run whatsgoingon mix deps.get

ecto.gen.migration:
	docker-compose run whatsgoingon mix ecto.gen.migration $(data)
