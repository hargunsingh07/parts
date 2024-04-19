# Use a Ruby base image
FROM ruby:3.1.2

# Set working directory
WORKDIR /app

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Install Rails gem
RUN gem install rails

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the rest of the application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Start Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
