class Movie < ApplicationRecord
  has_many :movie_alternative_titles, dependent: :destroy
  has_many :alternative_titles, through: :movie_alternative_titles, dependent: :destroy
  has_many :movie_genres, dependent: :destroy
  has_many :genres, through: :movie_genres, dependent: :destroy
  has_many :movie_actors, dependent: :destroy
  has_many :actors, through: :movie_actors, dependent: :destroy
end
