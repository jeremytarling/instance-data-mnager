require 'rubygems'
require 'sinatra'
require 'rest_client'
require 'json'

DB = 'http://localhost:5984/business-instance-data'

get '/' do
  data = RestClient.get "#{DB}/_design/tag-concepts/_view/by_preferredLabel"
  @result = JSON.parse(data)
  erb :index
end

get '/:guid' do
  data = RestClient.get "#{DB}/#{params[:guid]}"
  @result = JSON.parse(data)
  erb :record
end

post '/search' do
  data = RestClient.get "#{DB}/_design/tag-concepts/_view/by_preferredLabel?key=%22#{params[:query]}%22"
  @result = JSON.parse(data)
  erb :search
end
