class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true

  has_and_belongs_to_many :bars
  has_and_belongs_to_many :zip_codes
  
  has_secure_password
end
