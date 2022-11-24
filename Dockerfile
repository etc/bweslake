FROM ruby:3.1.2

ENV LANG C.UTF-8

WORKDIR /app
COPY . /app
RUN bundle install

EXPOSE 80

CMD ["bundle", "exec", "thin", "start", "-p", "80"]