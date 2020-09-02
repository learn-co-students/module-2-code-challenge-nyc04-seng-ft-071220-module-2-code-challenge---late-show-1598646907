class Appearance < ApplicationRecord
 
  belongs_to :episode
  belongs_to :guest

  # - Many to Many Relationship

  # - Episode ---< Appearance >--- Guest

  validates :rating, numericality: {only_integer: true}, inclusion: {in: 1..5}

  # Does this validation also work? ->  " validates :rating, numericality: {greater_than: 0, less_than_or_equal_to: 5} "

  # I am not sure yet how flash works and where errors should be implemented, I must revisit these concepts. 

end

# - From the README: 

# - Guests and Episodes have a many to many relationship THROUGH Appearances. 
# - A single Appearance BELONGS_TO one Guest and one Episode. 

# - Guest can appear on many episodes
# - Episode can have multiple guests
# - Appearance stores a numeric rating (integer)

# - The rating on an Appearance should be between 1 and 5 (inclusive - `1` and `5` are okay).

# - Add a validation to ensure that the rating is between 1 and 5.
# - Add handling for this error to the Appearance create action.
# - The validation error should be shown on the Appearance creation form 
# - when a user attempts to save an appearance with an invalid rating.