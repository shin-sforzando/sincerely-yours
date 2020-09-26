# sincere-list

A list to manage weddings and funerals.

- [Dependencies](#dependencies)
- [How to](#how-to)
  - [Run](#run)
  - [Deploy to Heroku](#deploy-to-heroku)
- [Misc](#misc)
  - [Visual Studio Code Remote - Containers](#visual-studio-code-remote---containers)

## Dependencies

- [Docker](https://www.docker.com)
- [Ruby on Rails](https://rubyonrails.org) ( `6.0.3` or higher)

## How to

### Run

```sh
docker-compose up --build
```

Then `http://localhost:3000/` will be launched in `development` mode.

### Deploy to Heroku

Make sure that the Docker images are completely stopped.

```sh
heroku container:push web --app sincere-list
heroku container:release web --app sincere-list
heroku run rails db:migrate --app sincere-list
heroku run rails assets:precompile --app sincere-list
```

```sh
heroku logs --tail --app sincere-list
```

```sh
heroku run rails console --app sincere-list
```

## Misc

### [Visual Studio Code Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

The configuration files are located in `.devcontainer` .
