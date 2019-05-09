#main app file

require 'sinatra'
require 'sinatra/activerecord'
require './config/environments' #database configuration
require './models/model'        #Model class
require 'json'

get '/pet' do
	@pet = Pets.all
	@pet.to_json
end

# post '/submit' do
# 	@model = Model.new(params[:model])
# 	if @model.save
# 		redirect '/models'
# 	else
# 		"Sorry, there was an error!"
# 	end
# end