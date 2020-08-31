class Episode < ApplicationRecord
    has_many :guests

    # has_many :guests, through: :appearances 
    # def episodes.each do |episode|
    #     @episode = Episode.date_to_i
    # end 

    # def episode_date
    #     self.Date.iso8601.to_s
    # end 
    # def episode_date 
    #     episode_date = Date.strptime
    # end 
end 


#Episode can have multiple guests
# Guest >- Appearance -< Episode 
