FROM elixir:1.3.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /maestro_api
WORKDIR /maestro_api
ADD mix.exs /maestro_api/mix.exs
ADD mix.lock /maestro_api/mix.lock
RUN mix local.hex --force
RUN mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
RUN mix deps.get

ADD . /maestro_api
