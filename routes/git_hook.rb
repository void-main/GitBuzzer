require 'sinatra'
require 'sinatra/contrib'
require 'json'
require_relative '../controllers/brain'

namespace '/hooks' do
  post '/git' do
    commit_info = JSON.parse(params[:payload])
    BuzzerBrain.trigger commit_info
  end
end
