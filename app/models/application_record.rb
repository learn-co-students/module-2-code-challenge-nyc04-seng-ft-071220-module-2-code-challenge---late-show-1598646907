class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

# - is self.abstract_class a validation?
