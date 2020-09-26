FROM ruby:latest

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs \
                       yarn

RUN mkdir /app
ENV APP_ROOT /app
WORKDIR ${APP_ROOT}

ADD ./Gemfile ${APP_ROOT}/Gemfile
ADD ./Gemfile.lock ${APP_ROOT}/Gemfile.lock

RUN bundle install
COPY . ${APP_ROOT}
