class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def episode_info 
        "Episode: #{self.number}, aired on #{self.date}"
    end 
end
