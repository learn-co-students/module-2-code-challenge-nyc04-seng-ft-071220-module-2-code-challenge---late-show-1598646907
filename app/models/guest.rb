class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances
    default_scope {order(name: :asc)}

end
