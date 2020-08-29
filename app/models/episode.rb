class Episode < ApplicationRecord
    has_many :guests
    # has_many :guests, through: :appearances 

end

#Episode can have multiple guests
# Guest >- Appearance -< Episode 