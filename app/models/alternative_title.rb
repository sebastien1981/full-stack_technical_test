class AlternativeTitle < ApplicationRecord
  has_many :alternative_title_j, dependent: :destroy
  has_many :movies, through: :alternative_title_j
end
