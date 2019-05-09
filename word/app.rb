#main app file

require 'sinatra'
require 'sinatra/activerecord'
require './config/environments' #database configuration
require './models/model'        #Model class
require 'json'

get '/pet' do
	# @pet = Pets.find_by_sql('SELECT * FROM pets JOIN owners ON pets.owner_id = owners.id;')
	@pet = Pets.select("pets.*, owners.*").joins("JOIN owners ON pets.owner_id = owners.id;")
	@pet.to_json
end

post '/submit' do
	@newpet = Pets.new(params[:model])
	if @newpet.save
		redirect '/pets'
	else
		"Sorry, there was an error adding the pet!"
	end
end

delete '/pet/:id' do
	@pet_object = Pet.delete(params[:id])
	@pet_object.to_json
end

	