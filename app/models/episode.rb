class Episode < ApplicationRecord
    has_many :apparances
    has_many :guests, through: :apparances 
end
