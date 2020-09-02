class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode


  default_scope { order(rating: :desc) }

  validates :episode, :guest, :rating, presence: true
  validates :rating, numericality: { only_integer: true}, inclusion: {in: 1..5, message: "The Rating needs to be a number from 1 to 5"} #keeps the range within a suitable range
  validates :guest_id, uniqueness: {scope: :episode_id, message: " Selection not availible please choose another"} #ensures guest dont get duplicated on the same episode
end
