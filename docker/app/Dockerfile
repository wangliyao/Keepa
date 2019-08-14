FROM ruby:2.3.1

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak && \
      echo "deb http://mirrors.163.com/debian/ jessie main non-free contrib" >/etc/apt/sources.list && \
      echo "deb-src http://mirrors.163.com/debian/ jessie main non-free contrib" >>/etc/apt/sources.list

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs 

RUN apt-get install -y imagemagick

RUN apt-get install -y vim

ENV RAILS_ROOT /var/www/Keepa

RUN mkdir -p $RAILS_ROOT

WORKDIR $RAILS_ROOT

ENV RAILS_ENV='production'
ENV RACK_ENV='production' 

COPY Gemfile Gemfile

COPY Gemfile.lock Gemfile.lock

RUN gem install bundler

RUN bundle install --jobs 20 --retry 5 --without development test 

COPY . .

RUN bundle exec rake RAILS_ENV=production assets:precompile

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]