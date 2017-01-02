class Business < ApplicationRecord
  # Direct associations

  belongs_to :ownership

  has_many   :tags,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  has_one    :user,
             :through => :ownership,
             :source => :user

  # Validations

end
