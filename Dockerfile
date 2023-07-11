FROM ruby:3.2.2

ENV LANG C.UTF-8

WORKDIR /app

COPY Gemfile /app
COPY Gemfile.lock /app

RUN bundle install

COPY . /app

EXPOSE 80

CMD ["bundle", "exec", "thin", "start", "-a", "0.0.0.0", "-p", "80"]