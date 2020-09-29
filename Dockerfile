FROM ruby:2.7.1-alpine AS builder

ENV RUNTIME_PACKAGES="linux-headers libxml2-dev curl make gcc libc-dev nodejs tzdata postgresql-dev postgresql git yarn" \
    DEV_PACKAGES="build-base curl-dev" \
    LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    APP_ROOT=/app

WORKDIR ${APP_ROOT}

COPY Gemfile* ./
RUN echo "gem: --no-rdoc --no-ri" > /.gemrc

RUN apk add --no-cache --update ${RUNTIME_PACKAGES} && \
    apk add --virtual build-dependencies --no-cache --update ${DEV_PACKAGES} && \
    bundle install --jobs=4 && \
    apk del build-dependencies && \
    rm -rf /usr/local/bundle/cache/*.gem

COPY package*.json yarn.lock ./
RUN yarn install

FROM ruby:2.7.1-alpine

ENV RUNTIME_PACKAGES="nodejs tzdata postgresql-dev postgresql git yarn" \
    LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    APP_ROOT=/app

WORKDIR ${APP_ROOT}

RUN apk add --no-cache --update ${RUNTIME_PACKAGES}

COPY --from=builder /usr/local/bundle /usr/local/bundle
COPY --from=builder . ${APP_ROOT}

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
