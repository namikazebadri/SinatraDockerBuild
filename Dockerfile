FROM ruby:2.7.2-alpine3.13

ENV SINATRA_HOME=/app

RUN mkdir -p $SINATRA_HOME

WORKDIR $SINATRA_HOME

COPY . $SINATRA_HOME

RUN apk add --update \
      build-base \
      nodejs \
      tzdata \
      yarn

RUN rm -rf /var/cache/apk/*

RUN gem install bundler -v 2.2.9

RUN bundle config build.nokogiri --use-system-libraries

RUN bundle check || bundle install

EXPOSE 9292

ENTRYPOINT ["bundle", "exec", "puma", "-b", "tcp://0.0.0.0:9292"]