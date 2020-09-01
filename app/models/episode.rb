class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    #show the average rating of the Appearances for the episode
    #map over the episode's apperances to get the ratings 
    def average_rating
        rating_array = self.appearances.map do |appearance|
            appearance.rating
        end
        numerator = rating_array.reduce(0){ |sum, num| sum + num }
        denominator = rating_array.count
        average = numerator.to_f / denominator.to_f
        average
    end
end
