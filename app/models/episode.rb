class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances


def average_rating
    empty_array=[]
    self.appearances.map do |rating|
    empty_array<< rating.rating
      end
    sum= empty_array.sum
    average=sum/empty_array.count
    average
 end

end
