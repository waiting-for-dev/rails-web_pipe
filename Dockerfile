FROM ruby:2.6.5
ENV APP_HOME /app/
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev libxml2-dev libxslt1-dev nodejs sqlite3 libsqlite3-dev yarn
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile* .ruby-version $APP_HOME
RUN bundle install
RUN rails webpacker:install
