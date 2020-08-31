class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def get_rating(episode_id_params)
        Appearance.where(episode_id: episode_id_params, guest_id: self)[0][:rating] 
        #in our appearance new form, need to prevent new instance being created if exist. 
        #editing rating is okay, but creating new rating for the same appearance is confusing.
    end
end
