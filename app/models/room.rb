class Room < ApplicationRecord
  validates :name_facility, presence: true
  validates :introduction, presence: true
  validates :price,  presence: true
  validates :address, presence: true
  
  mount_uploader :avatar, AvatarUploader
end
