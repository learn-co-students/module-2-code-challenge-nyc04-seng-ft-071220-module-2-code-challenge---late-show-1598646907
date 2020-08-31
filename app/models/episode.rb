class Episode < ApplicationRecord
    has_many :guests
    # has_many :guests, through: :appearances 
    # def episodes.map do |episode|
    #     @episode = Episode.date 
    # end 
     
end

#Episode can have multiple guests
# Guest >- Appearance -< Episode 