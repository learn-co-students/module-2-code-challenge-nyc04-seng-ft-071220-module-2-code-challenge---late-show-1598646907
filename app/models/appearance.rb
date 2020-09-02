class Appearance < ApplicationRecord
  validates :rating, { numericality:less_than_or_equal_to(5), message: "The rating must be a number netween 1 and 5"}
  belongs_to :guest
  belongs_to :episode
end
