class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
end
# who ever has belongs will have an id appearnace has id to an episode b/c it "belongs to the episode
# has 