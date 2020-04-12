class Recipe < ApplicationRecord
  # attr_accessor :name, :ingredients_attributes
  has_many :ingredients, dependent: :destroy
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
  validates :title, presence: true, length: {minimum: 4}
  validates :author, presence: true
end
