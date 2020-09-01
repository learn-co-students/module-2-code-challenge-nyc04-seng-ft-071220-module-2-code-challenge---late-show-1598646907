class Episode < ApplicationRecord
    has_many :appearances,  -> {order ("rating DESC")}, dependent: :destroy
    has_many :guests, through: :appearances

    def average_rating
        if self.appearances.pluck(:rating).size > 0
        self.appearances.pluck(:rating).sum(0.0)/self.appearances.pluck(:rating).size
        else
            "No rating available"
        end
    end
end
