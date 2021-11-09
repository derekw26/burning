class Reservation < ApplicationRecord


# many to many relationship between flights and users #
  belongs_to :user, optional: true

  belongs_to :flight, optional: true


end
