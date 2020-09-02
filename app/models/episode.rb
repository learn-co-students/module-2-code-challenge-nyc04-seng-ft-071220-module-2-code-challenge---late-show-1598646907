class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    validates :number, numericality: true, on: :create
    validates :number, numericality: { message: "%{value} seems wrong" }
end
