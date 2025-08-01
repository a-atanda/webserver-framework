# 1) build stage: install build tools + gems
FROM ruby:3.3-slim-bullseye AS builder
WORKDIR /app

# Install compiler toolchain so native gems can build
RUN apt-get update \
  && apt-get install -y --no-install-recommends build-essential \
  && rm -rf /var/lib/apt/lists/*

# Copy only your Gemfile, then install gems (caching this step)
COPY Gemfile ./

# Install Bundler and your gems (excluding dev/test)
RUN gem install bundler \
  && bundle config set without 'development test' \
  && bundle install --jobs 4 --retry 3

# Copy the rest of your app’s source
COPY . .

# 2) runtime stage: copy only what’s needed
FROM ruby:3.3-slim-bullseye
WORKDIR /app

# Bring in installed gems and your app code
COPY --from=builder /usr/local/bundle /usr/local/bundle
COPY --from=builder /app .

EXPOSE 3000
CMD ["bundle", "exec", "puma", "-b", "tcp://0.0.0.0:3000"]

