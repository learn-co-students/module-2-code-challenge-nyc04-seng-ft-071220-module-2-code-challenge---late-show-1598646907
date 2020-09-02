class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :rating, numericality: {only_integer: true}, inclusion: {in: 1..5, message: " from 1 through 5 "}

    #deliverable number 6
    validates :guest_id, uniqueness: true

end
