class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    #dependent: :destroy ? resetting db:seed. Issue with dependent foreign Key.
end
