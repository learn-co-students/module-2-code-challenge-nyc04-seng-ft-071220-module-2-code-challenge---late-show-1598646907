class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5, message: "is only from 1 to 5 (inclusive)"}
  validates :guest_id, uniqueness: { scope: :episode_id, message: "is already recorded for this episode; A guest can only appear on an episode once" }
  
end
