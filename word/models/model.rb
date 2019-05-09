class Pets < ActiveRecord::Base
    belongs_to :owners
end 

class Owners < ActiveRecord::Base
    has_many :pets
end 