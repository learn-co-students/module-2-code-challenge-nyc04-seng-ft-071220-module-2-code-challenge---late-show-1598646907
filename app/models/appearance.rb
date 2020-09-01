class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  default_scope { order(rating: :desc) }

  validates :episode, :guest, :rating, presence: true
  validates :rating, numericality: { only_integer: true}, inclusion: {in: 1..5, message: "Range needs to be between 1 to 5"}
  validates :guest_id, uniqueness: {scope: :episode_id, message: "chosen has already been added to this episode, Please choose another"}

end
