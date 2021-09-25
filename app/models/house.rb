class House < ApplicationRecord
    belongs_to :category
    has_one_attached :pic
end
