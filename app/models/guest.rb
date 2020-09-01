class Guest < ApplicationRecord
 has_many :episodes
#  has_many :appearces, through: episodes
# def full_name
#     self.first_name + " " + self.last_name
# end

end


# - Guest can appear on many episodes
# - Episode can have multiple guests
# - Appearance stores a numeric rating

# Guest >- Appearance -< Episode 