local.hex:
	docker-compose run whatsgoingon mix local.hex --force

sh:
	docker-compose run whatsgoingon sh

up: local.hex
	docker-compose run whatsgoingon mix phoenix.server

iex:
	docker-compose run whatsgoingon iex

deps.get:
	docker-compose run whatsgoingon mix deps.get

ecto.gen.migration:
	docker-compose run whatsgoingon mix ecto.gen.migration $(data)


