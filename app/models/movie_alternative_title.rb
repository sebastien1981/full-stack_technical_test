class MovieAlternativeTitle < ApplicationRecord
  belongs_to :movie
  belongs_to :alternative_title
end
