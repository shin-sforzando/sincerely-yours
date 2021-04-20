FROM ruby:3.0.1-buster

ENV DEBIAN_FRONTEND="noninteractive" \
    LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    APP_ROOT=/app

WORKDIR ${APP_ROOT}

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

COPY Gemfile* ./
COPY package*.json yarn.lock ./

RUN echo "gem: --no-rdoc --no-ri" > /.gemrc

RUN apt-get update -qq && \
    apt-get install -yq git make nodejs postgresql-client yarn && \
    gem update --system && \
    bundle install --jobs=4 && \
    yarn install && \
    apt-get clean

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
