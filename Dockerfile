FROM ruby:latest

WORKDIR /usr/src/app

COPY . .

RUN gem install rackup
RUN gem install sinatra

EXPOSE 4567

CMD ["ruby", "server.rb"]
