class Appearance < ApplicationRecord
  validates :rating, inclusion: { in: 1..5, message: "must be between 1 and 5"}
  belongs_to :guest
  belongs_to :episode
end

