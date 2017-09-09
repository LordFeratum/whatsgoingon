FROM elixir:1.5.1-alpine
WORKDIR /opt/whatsgoingon

RUN mix local.hex --force
RUN mix local.rebar --force
