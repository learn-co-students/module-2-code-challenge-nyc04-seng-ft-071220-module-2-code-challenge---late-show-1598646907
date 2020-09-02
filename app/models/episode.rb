class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances
end

# def average_rating trying to defing a rating average mathod that is only called when ratings is present
#     if @episode.rating.count > 0
#     ratings = self.appearances.map { |appearance| appearance.rating }
#     ratings.sum / ratings.length.to_f
#     else 
#     puts "No rating to display"
#     end
# end
