class Hero < ApplicationRecord
    validates :name, :picture, :age, :enjoys, :superpower, presence: true 
    
end
