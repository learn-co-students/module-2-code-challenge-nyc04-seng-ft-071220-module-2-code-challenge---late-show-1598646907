class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, numericality: { only_integer: true }, inclusion: {in: 1..5, message: "needs to be between 1 and 5" } 

end
