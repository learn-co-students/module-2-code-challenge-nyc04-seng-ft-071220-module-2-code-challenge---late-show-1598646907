class Guest < ApplicationRecord
    has_many :episodes, through: :appearance
end
