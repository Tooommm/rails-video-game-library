class Game < ApplicationRecord
  belongs_to :library
  has_one :category
  has_one :support
end
