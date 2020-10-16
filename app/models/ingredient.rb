class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true
  validates :name, presence: true, uniqueness: true
end
