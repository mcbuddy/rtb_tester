require 'rubygems'
require 'bundler'
require 'securerandom'
require 'sinatra/namespace'
require 'haml'
Bundler.require(:default)

# Load the user models
require_relative 'models/request'
register Sinatra::Twitter::Bootstrap::Assets

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
  File.read(File.join('public', 'index.html'))
end

get '/request' do
  haml :request

end
