FROM elixir:1.3.4

# Elixir requires UTF-8
RUN LANG="en_US.utf8"
RUN LANGUAGE="en_US:"
RUN LC_ALL=en_US.UTF-8

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get update
RUN apt-get install build-essential libssl-dev
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

RUN mkdir /maestro_api
WORKDIR /maestro_api
ADD mix.exs /maestro_api/mix.exs
ADD mix.lock /maestro_api/mix.lock
RUN mix local.hex --force
RUN mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

ADD . /maestro_api
RUN mix deps.get
RUN mix deps.compile
