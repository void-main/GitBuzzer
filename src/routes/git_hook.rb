require 'sinatra'
require 'sinatra/contrib'

namespace '/hooks' do
  get '/git' do
    push = JSON.parse(params[:payload])
    "I got some JSON: #{push.inspect}"
  end
end
