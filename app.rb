require 'rubygems'
require 'bundler'
require 'securerandom'
require 'sinatra/namespace'
Bundler.require(:default)

# Load the user model
require_relative 'model/request'
require_relative 'model/impression'
require_relative 'model/video'


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

namespace '/rtb' do

end
