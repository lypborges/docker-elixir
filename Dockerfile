FROM elixir:1.3.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /maestro_api
WORKDIR /maestro_api
RUN mix local.hex
RUN mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
RUN mix deps.get
RUN apt-get install nodejs-legacy
RUN ln -s /usr/bin/nodejs /usr/bin/node
ADD . /maestro_api
