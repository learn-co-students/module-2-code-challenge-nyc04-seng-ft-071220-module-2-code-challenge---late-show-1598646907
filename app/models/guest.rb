class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def get_rating(episode_id_params)
        appearances.where(episode_id: episode_id_params, guest_id: self)[0][:rating]
    end

end
