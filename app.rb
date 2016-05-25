require 'rubygems'
require 'bundler'
require 'securerandom'
require 'sinatra/namespace'
require 'haml'
require 'json'
Bundler.require(:default)

# Load the user models
require_relative 'models/builder'
# require_relative 'models/request'
# register Sinatra::Twitter::Bootstrap::Assets

# Configure the mongo client
configure do
  case ENV['RACK_ENV']
    when 'production'
      Mongoid.load!("config/mongoid.yml", :production)
    when'development'
      Mongoid.load!("config/mongoid.yml", :development)
  end
end

# the routes
get '/' do
  haml :home
end

get '/builder' do
  haml :builder
end

post '/review' do
  @builder = params['builder']
  @payload = params['payload'].to_json
  haml :review
end

get '/request' do
  haml :request
end

post '/request' do

end