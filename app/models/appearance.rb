class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, :inclusion => 1..5
  validates :guest_id, uniqueness: {scope: :episode_id, message: "has already appear on this episode" }



  def self.avrg_rating(ep)
    if !ep.guests.empty?
      all_episodes = Appearance.all.select{|appear|appear.episode_id == ep.id}
      #byebug
      sum_of_all_episodes = all_episodes.map(&:rating).sum
      all_episodes = all_episodes.count
      
      avrg = sum_of_all_episodes/all_episodes
    end 
  end
  
end
