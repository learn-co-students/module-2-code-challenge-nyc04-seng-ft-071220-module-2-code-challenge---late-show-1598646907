class Guest < ApplicationRecord

    has_many :appearances
    has_many :episodes, through: :appearances

end

# - Many to Many Relationship

# - Episode ---< Appearance >--- Guest

# - From the README: 

# - Guests and Episodes have a many to many relationship THROUGH Appearances. 
# - A single Appearance BELONGS_TO one Guest and one Episode. 

# - Guest can appear on many episodes
# - Episode can have multiple guests
# - Appearance stores a numeric rating (integer)

