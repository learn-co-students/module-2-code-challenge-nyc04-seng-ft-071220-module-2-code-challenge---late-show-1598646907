class Guest < ApplicationRecord
has_many :apparances 
has_many :episodes, through: :apparances
end
