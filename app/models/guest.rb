class Guest < ApplicationRecord
    has_many :appearances, -> { order("rating DESC")}
    has_many :episodes, through: :appearances
    default_scope {order(name: :asc)}
    validate :name_occupation_exist?

    #dependent: :destroy ? resetting db:seed. Issue with dependent foreign Key.
    #using validates, how write both instance name && occupation using uniqueness?

    private

    def name_occupation_exist?
        # byebug
        match = Guest.find_by(name: self.name, occupation: self.occupation)
        if match
            self.errors.add("Both name and occupation.", "Already Exist" )
        end
    end

end
