# MyApp

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

#### System dependencies
  * To make it easier this project uses docker compose for development environment.
  * So you need to install docker for your OS. https://docs.docker.com/compose/
  * The commands doc is here: https://docs.docker.com/compose/reference/
  * All docker commands must be run in the root folder 'back'

#### Configuration
  After install docker for your OS you need:
  * Run `docker-compose build`
  * You may need to run this again, if any gem is added to the project.

#### Database creation
  *  Run `docker-compose run web mix ecto.create`
  *  Run `docker-compose run web mix ecto.migrate`

#### Running your server
  * Run `docker-compose run web mix ecto.migrate`
  * Run `docker-compose up`
  * Go to `http://localhost:4000/` and be happy ;)

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
