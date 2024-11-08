FROM ruby:3.3.6

ENV LANG C.UTF-8

WORKDIR /app

COPY Gemfile /app
COPY Gemfile.lock /app

RUN bundle install

COPY . /app

EXPOSE 80

CMD ["bundle", "exec", "puma", "-p", "80"]