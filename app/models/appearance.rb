class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  #checks based on the rating if the number/integer is between 1 and 5 (inclusive)
    # there is no "range" for numericality
    # so make the condition greater_than_or_equal_to: 1 & less_than_or_equal_to: 5
    # customize the message to: "is only from 1 to 5 (inclusive)"
      # since the default message for the above conditions shows separately vs range (make it more user friendly)
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5, message: "is only from 1 to 5 (inclusive)"}

  #checks based on guest_id if the guest has appeared on a certain episode before
    # uniqueness checks if something has been repeated
    # scope: gives us access to another attribute & bases the uniqueness on this 
    # customize the message to: "is already recorded for this episode; A guest can only appear on an episode once"
      # want to explain exactly why the input was not valid
  validates :guest_id, uniqueness: { scope: :episode_id, message: "is already recorded for this episode; A guest can only appear on an episode once" }
  
end
