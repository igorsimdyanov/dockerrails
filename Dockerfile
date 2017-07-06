FROM ruby:2.3

WORKDIR /app
COPY app /app
RUN cd /app && gem install bundler && bundle install --jobs 4

CMD ["bundle", "exec", "rails", "s", "--binding=0.0.0.0", "--port=3000"]