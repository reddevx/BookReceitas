class Recipe < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :recipe, presence: true

  belongs_to :user
end
