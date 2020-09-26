FROM ruby:latest

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE DontWarn
ENV DEBCONF_NOWARNINGS yes
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends zsh \
                                               build-essential \
                                               libpq-dev \
                                               nodejs \
                                               yarn && \
    apt-get clean -y
RUN chsh -s /bin/zsh

RUN mkdir /app
ENV APP_ROOT /app
WORKDIR ${APP_ROOT}

ADD ./Gemfile ${APP_ROOT}/Gemfile
ADD ./Gemfile.lock ${APP_ROOT}/Gemfile.lock

RUN bundle config --global jobs 10 && \
    bundle config --global build.nokogiri --use-system-libraries
RUN bundle install

COPY . ${APP_ROOT}

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]

EXPOSE 3000
CMD [ "rails", "server", "--binding", "0.0.0.0"]
