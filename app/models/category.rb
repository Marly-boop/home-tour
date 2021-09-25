class Category < ApplicationRecord
  has_many :houses
  has_one_attached :picture
end
