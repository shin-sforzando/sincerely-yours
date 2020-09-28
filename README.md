# sincerely-yours

![Deploy](https://github.com/shin-sforzando/sincerely-yours/workflows/Deploy/badge.svg)

A list to manage weddings and funerals.

- [Dependencies](#dependencies)
- [How to](#how-to)
  - [Run](#run)
  - [Test](#test)
  - [Deploy to Heroku](#deploy-to-heroku)
  - [Check Heroku](#check-heroku)
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

### Test

(T. B. D.)

### Deploy to Heroku

GitHub Actions deploys automatically.

```sh
heroku run rails assets:precompile RAILS_ENV=production --app sincerely-yours
heroku run rails db:migrate --app sincerely-yours
```

### Check Heroku

```sh
heroku logs --tail --app sincerely-yours
```

```sh
heroku run rails console --app sincerely-yours
```

## Misc

### [Visual Studio Code Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

The configuration files are located in `.devcontainer` .
