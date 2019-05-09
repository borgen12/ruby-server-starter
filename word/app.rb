#main app file

require 'sinatra'
require 'json'
require 'sinatra/activerecord'
require './config/environments' #database configuration
require './models/owner'        #Model class

get '/owner' do
	@owners = Owner.all
	@owners.to_json
end

# get '/pet' do
# 	@pet = Pets.all
# 	@pet.to_json

# post '/submit' do
# 	@model = Model.new(params[:model])
# 	if @model.save
# 		redirect '/models'
# 	else
# 		"Sorry, there was an error!"
# 	end
