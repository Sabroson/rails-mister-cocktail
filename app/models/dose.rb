class Dose < ApplicationRecord
  validates :description, presence: true, allow_blank: false
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates_uniqueness_of :cocktail, scope: :ingredient

  belongs_to :cocktail
  belongs_to :ingredient
end
