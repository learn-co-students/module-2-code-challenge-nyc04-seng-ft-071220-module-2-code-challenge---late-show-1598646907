class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest
  validates :rating, :numericality => {:greater_than_or_equal_to=>1, :less_than_or_equal_to=>5, :only_integer=> true} 
  # validates :rating, :inclusion=>{in: 1..5}
  validates :guest, :uniqueness => {scope: :episode, message: "already exists for that episode"}
end
