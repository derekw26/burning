class Flight < ApplicationRecord

#one to many relationship with airplanes
belongs_to :airplane, optional: true
has_many :reservations
end
