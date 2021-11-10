class Airplane < ApplicationRecord

  #one to many relationship with flights
    has_many :flights
end
