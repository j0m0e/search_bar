class QuizImg < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :value, presence: true
  validates :filepath, presence: true, uniqueness: true
  validates :category, presence: true
end
