class ZipCode < ActiveRecord::Base
  validates :zip_codes, presence: true, uniqueness: true

  has_and_belongs_to_many :users
end
