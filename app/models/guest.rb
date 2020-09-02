class Guest < ApplicationRecord
    has_many :appearances, -> {order(rating: :asc)}
    has_many :episodes, through: :appearances


    # #can't figure out 
    # def order_by_rating
       Guest.includes(:appearances).order('appearances.rating ASC')

    # end

end
