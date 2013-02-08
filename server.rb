require 'sinatra'
require 'sinatra/contrib'

Dir[File.dirname(__FILE__) + "/routes/*.rb"].each { |route_file| require route_file }
Dir[File.dirname(__FILE__) + "/helpers/*.rb"].each { |helper_file| require helper_file }
