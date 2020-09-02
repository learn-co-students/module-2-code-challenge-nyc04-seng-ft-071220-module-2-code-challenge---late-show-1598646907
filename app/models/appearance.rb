class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :rating, numericality: {only_integer: true}, inclusion: {in: 1..5}
    validates :guest, uniqueness: true
end
