FROM ruby:2.7.1-alpine

ENV RUNTIME_PACKAGES="linux-headers libxml2-dev curl make gcc libc-dev nodejs tzdata postgresql-dev postgresql git" \
    DEV_PACKAGES="build-base curl-dev" \
    LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    APP_ROOT=/app

RUN mkdir ${APP_ROOT}
WORKDIR ${APP_ROOT}

COPY Gemfile* ./
COPY package*.json ./

RUN apk update && \
    apk upgrade && \
    apk add --no-cache ${RUNTIME_PACKAGES} && \
    apk add --virtual build-dependencies --no-cache ${DEV_PACKAGES} && \
    apk add -u yarn && \
    yarn install && \
    bundle install --jobs=4 && \
    apk del build-dependencies

COPY . .

RUN bundle exec rails assets:precompile RAILS_ENV=production

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
