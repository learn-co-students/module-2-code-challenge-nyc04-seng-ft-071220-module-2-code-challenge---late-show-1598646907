class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  
  #dependent: :destroy ? resetting db:seed. Issue with dependent foreign Key.

  # validates :rating, presence: true,  numericality: { only_integer: true }, inclusion: {in: 1..5}
  validate :correct_range, :guest_once_per_episode

  private 
  def correct_range
    # byebug
    num = self.rating
    if num.nil? || ( num < 1 || num > 5 )
      self.errors.add(:rating, "needs to be between 1 and 5")
    end
  end

  def guest_once_per_episode
      # byebug  
      match = Appearance.find_by(guest: self.guest, episode: self.episode)
      if !match.nil?
        self.errors.add(:guest, "this guest has ALREADY been on this episode")
      end

  end




  # def correct_range
  #   num = self.rating
  #   if !num.nil? && ( 1 <= num && num <= 5 )
  #     true
  #   else
  #     self.errors.add(:rating, "needs to be between 1 and 5")
  #   end
  # end


end
