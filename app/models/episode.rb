class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    #show the average rating of the Appearances for the episode
        #the average is numerator / denominator
            #numerator = sum of all the nums
            #denominator = how many nums there are
        #step 1: map over the episode's apperances to get the ratings & return subarray
        #step 2: reduce that array to get the numerator
        #step 3: get the count of how many nums are in the array to get the denominator
        #step 4: numerator / denominator
        #step 5: return average
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
