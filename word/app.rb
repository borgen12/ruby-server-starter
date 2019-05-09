#main app file

require 'sinatra'
require 'json'
require 'sinatra/activerecord'
require './config/environments' #database configuration
require './models/owner'        #Model class

get '/owners' do
	@owners = Owner.all
	@owners.to_json
end

# post '/submit' do
# 	@model = Model.new(params[:model])
# 	if @model.save
# 		redirect '/models'
# 	else
# 		"Sorry, there was an error!"
# 	end
# end
