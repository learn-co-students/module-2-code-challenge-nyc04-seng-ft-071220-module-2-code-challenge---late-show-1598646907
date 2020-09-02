class Appearance < ApplicationRecord
  validates :rating, inclusion: { in: 1..5, message: "must be between 1 and 5"}

  #validation for deliverable 6 is incomplete
  #the idea here is that a guest should be unique per episode
  #I tried to accomplish that by giving the uniqueness validator a scope
  validates :guest, uniqueness: {scope: :episode}
  belongs_to :guest
  belongs_to :episode


end
