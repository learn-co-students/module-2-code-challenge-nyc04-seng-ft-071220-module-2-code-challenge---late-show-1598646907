class Guest < ApplicationRecord
 has_many :episodes 
#  has_many :appearances, through: episodes 
end


# - Guest can appear on many episodes
# - Episode can have multiple guests
# - Appearance stores a numeric rating

# Guest >- Appearance -< Episode 