class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  belongs_to :episode
  belongs_to :guest
  
end
