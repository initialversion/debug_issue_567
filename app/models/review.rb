class Review < ApplicationRecord
  # Direct associations

  belongs_to :businesses,
             :foreign_key => "business_id"

  # Indirect associations

  # Validations

end
