class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    #need more practice with validations.
    validates :rating, numericality: {only_integer: true}, inclusion: {in: 1..5, message: " must be from 1 through 5 "}

    #deliverable number 6
    validates :guest_id, uniqueness: { scope: :episode_id, message: "appeared already for this episode"}

end
