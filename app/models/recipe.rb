class Recipe < ApplicationRecord
  has_many :ingredients, :dependent => :delete_all
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank
  validates :title, presence: true, length: {minimum: 4}
  validates :author, presence: true
end
