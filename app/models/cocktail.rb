# class Cocktail < ApplicationRecord
#   has_many :doses, depend: :destroy
#   has_many :ingredients, through: :doses
# end

class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true
  validates :name, uniqueness: true
end
