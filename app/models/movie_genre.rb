class Movie_Genre < ApplicationRecord
  belongs_to :genre
  belongs_to :movie
end
