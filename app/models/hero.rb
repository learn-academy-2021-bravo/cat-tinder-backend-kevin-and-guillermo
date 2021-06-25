class Hero < ApplicationRecord
    validates :name, :age, :enjoys, :superpower, presence: true 
    
end
