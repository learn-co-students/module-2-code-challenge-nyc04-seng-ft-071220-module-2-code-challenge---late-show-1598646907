class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :rating, inclusion: {in: 1..5, message: "must be between 1 and 5"}

  validate :only_one_appearance_per_episode, on: :create

  def only_one_appearance_per_episode
  
    if self.episode.guests.include?(self.guest) == true
      self.errors.add(:guest_id, "can only appear once per episode")
    end

  end

  default_scope { order(rating: :desc)}


end
