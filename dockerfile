# syntax=docker/dockerfile:1
FROM ruby:2.7
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
RUN gem install ruby-debug-ide debase
CMD ["rails", "server", "-b", "0.0.0.0"]
EXPOSE 3000
