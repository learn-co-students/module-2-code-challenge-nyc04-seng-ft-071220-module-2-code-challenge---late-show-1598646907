class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_ratings
        rating_array=self.appearances.map do |appearance| 
            appearance.rating
        end
        
        count=self.appearances.count
        average_rating= rating_array.sum/count.to_f
    end
end
