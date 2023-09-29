class AlternativeTitle < ApplicationRecord
  has_many :movie_alternative_titles, dependent: :destroy
  has_many :movies, through: :movie_alternative_titles
end
