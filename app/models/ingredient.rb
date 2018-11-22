class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :doses
  has_many :cocktails, through: :doses

  before_destroy :check_for_cocktails

  private

  def check_for_cocktails
    return true unless cocktails.count.positive?

    # errors.add_to_base('cannot delete ingredient while linked cocktails exist')
    false
  end
end
