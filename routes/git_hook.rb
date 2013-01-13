require 'sinatra'
require 'sinatra/contrib'
require 'json'
require_relative '../controllers/brain'

namespace '/hooks' do
  post '/git' do
    commit_info = JSON.parse(params[:payload])
    puts 'Commit message!!!'
    puts commit_info
    puts 'About to trigger!!!'
    BuzzerBrain.trigger commit_info
    puts 'After trigger!!!'
  end
end
