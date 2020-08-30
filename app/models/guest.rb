class Guest < ApplicationRecord
# has_many :episodes
 has_many :appearances 
 has_many :episodes, through: :appearances
end


# A single Appearance belongs to one Guest and one Episode.
# a guest has many episodes through appearances