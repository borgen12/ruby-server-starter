#The environment variable DATABASE_URL should be in the following format:
# => postgres://{user}:{password}@{host}:{port}/path
configure :production, :development do
	db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/pet_hotel')

	ActiveRecord::Base.establish_connection(
			:adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
			:host     => "localhost",
			:username => "christopherborgen",
			:password => "",
			:database => db.path[1..-1],
			:encoding => 'utf8'
	)
end