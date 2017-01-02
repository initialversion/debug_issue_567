class Business < ApplicationRecord
  mount_uploader :cover_photo, CoverPhotoUploader

  # Direct associations

  belongs_to :ownership

  has_many   :tags,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  has_many   :tag_names,
             :through => :tags,
             :source => :tag_name

  has_one    :user,
             :through => :ownership,
             :source => :user

  # Validations

end
