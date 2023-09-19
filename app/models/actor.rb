class Actor < ApplicationRecord
  class Genre < ApplicationRecord
    has_many :actor_j, dependent: :destroy
    has_many :movies, through: :actor_j
end
