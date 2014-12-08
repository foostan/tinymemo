FROM ubuntu:trusty

MAINTAINER foostan ks@fstn.jp

RUN apt-get -y update
RUN apt-get install -y ruby
RUN gem install bundler

ADD . tinymemo
WORKDIR tinymemo
RUN bundle install

EXPOSE 80
ENTRYPOINT bundle exec ruby tinymemo.rb
