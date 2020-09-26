# sincere-list

A list to manage weddings and funerals.

Demo: [https://sincere-list.herokuapp.com/](https://sincere-list.herokuapp.com/)

- [Dependencies](#dependencies)
- [How to](#how-to)
  - [Run](#run)
  - [Deploy to Heroku](#deploy-to-heroku)

## Dependencies

- Docker
  - docker-compose
- Rails 6

## How to

### Run

```sh
docker-compose up --build
```

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
