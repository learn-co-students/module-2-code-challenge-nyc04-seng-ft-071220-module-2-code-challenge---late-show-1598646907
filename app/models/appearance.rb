class Appearance < ApplicationRecord
    
    belongs_to :guest
    belongs_to :episode
end
# who ever has belongs will have an id appearnace has id to an episode b/c it "belongs to the episode
# has 

# schema
# a guest can appear on many episodes
# episode can have multiple guests
# and have a rating 