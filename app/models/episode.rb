class Episode < ApplicationRecord
    # belong_to :guest
    # belongs_to :appearance
    has_many :appearances
    has_many :guests, through: :appearances
end
