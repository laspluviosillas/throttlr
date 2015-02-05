# myapp.rb
require 'sinatra'

configure do
  set :throttle, false
end

get '/' do
  settings.throttle ? "on" : "off"
end

get '/on' do
  settings.throttle = true
  "now on"
end

get '/off' do
  settings.throttle = false
  "now off"
end
