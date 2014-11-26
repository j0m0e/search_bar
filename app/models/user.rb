class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true

  has_and_belongs_to_many :bars
  
  has_secure_password

  # associates a user with a specific bar
  def add_bar(bar)
  	self.bars.push(bar) unless self.bars.include?(bar)
  end

  def remove_bar(bar)
  	self.bars.destroy(bar) if self.bars.include?(bar)
  end

end
