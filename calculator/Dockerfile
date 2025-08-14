FROM ruby:3.4.5

ENV INSTALL_PATH /opt/app
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

RUN gem install bundler
RUN gem install foreman

COPY .ruby-version .ruby-version
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install

ADD . $INSTALL_PATH
