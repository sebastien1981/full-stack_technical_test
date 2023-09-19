class Movie < ApplicationRecord
  has_many :alternative_title_j, dependent: :destroy
  has_many :alternative_titles, through: :alternative_title_j
  has_many :genre_j, dependent: :destroy
  has_many :genres, through: :genre_j
  has_many :actor_j, dependent: :destroy
  has_many :actors, through: :actor_j
end
