class ZipCode < ActiveRecord::Base
  validates :zipcodes, presence: true, uniqueness: true

  has_and_belongs_to_many :users
end
