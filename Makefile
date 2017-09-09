sh:
	docker-compose run whatsgoingon sh

up:
	docker-compose up

iex:
	docker-compose run whatsgoingon iex

deps.get:
	docker-compose run whatsgoingon mix deps.get

ecto.gen.migration:
	docker-compose run whatsgoingon mix ecto.gen.migration $(data)

ecto.create:
	docker-compose run whatsgoingon mix ecto.create

ecto.migrate:
	docker-compose run whatsgoingon mix ecto.migrate
