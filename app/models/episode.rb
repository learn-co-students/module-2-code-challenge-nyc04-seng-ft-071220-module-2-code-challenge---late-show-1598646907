class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def get_average_rating
        ratings = self.appearances.map { |appearance| appearance.rating }
        ratings.sum / ratings.length.to_f
    end
end

# 7. Advanced: Episode Average Rating
# On the Episode show page, show the average rating of the Appearances for the episode.