class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :name, presence: true
  validates :name, uniqueness: { scope: :name }
end
