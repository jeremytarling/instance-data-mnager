require 'rubygems'
require 'sinatra'
require 'rest_client'
require 'json'

DB = 'http://localhost:5984/business-instance-data'

get '/' do
  erb :index
end

post '/search' do
  data = RestClient.get "#{DB}/_design/tag-concepts/_view/by_preferredLabel?key=%22#{params[:query]}%22"
  @result = JSON.parse(data)
  erb :search
end

get '/business_instance_data' do
  data = RestClient.get "#{DB}/_design/tag-concepts/_view/by_dataset?key=%22business-news%22"
  @result = JSON.parse(data)
  erb :business_instance_data
end

get '/local_instance_data' do
  data = RestClient.get "#{DB}/_design/tag-concepts/_view/by_dataset?key=%22local-news%22"
  @result = JSON.parse(data)
  erb :local_instance_data
end

get '/world_instance_data' do
  data = RestClient.get "#{DB}/_design/tag-concepts/_view/by_dataset?key=%22world-news%22"
  @result = JSON.parse(data)
  erb :world_instance_data
end

get '/:guid' do
  data = RestClient.get "#{DB}/#{params[:guid]}"
  @result = JSON.parse(data)
  erb :record
end

