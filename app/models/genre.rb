class Genre < ApplicationRecord
  has_many :genre_j, dependent: :destroy
  has_many :movies, through: :genre_j
end
