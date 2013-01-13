require 'sinatra'
require 'sinatra/contrib'
require 'json'
require_relative '../controllers/brain'

namespace '/hooks' do
  post '/git' do
    commit_info = JSON.parse(params[:payload])
    puts commit_info
    puts 'before buzz...'
    BuzzerBrain.trigger commit_info
    puts 'after buzz...'
  end
end
