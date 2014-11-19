class Bar < ActiveRecord::Base
  validates :business_id, presence: true, uniqueness: true

  has_and_belongs_to_many :users

end
