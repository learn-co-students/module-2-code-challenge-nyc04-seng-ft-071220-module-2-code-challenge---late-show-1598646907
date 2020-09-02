class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, numericality: { only_integer: true }, inclusion: {in: 1..5, message: "needs to be between 1 and 5" } 
  validates :guest, uniqueness: true

  # def appear_only_once
  #   if #same guest and #episode already exists in appearance.all,
  #     # throw an error
  #     errors.add(:message, "A guest should only appear on an episode once!")
  #   end
  # end


end
