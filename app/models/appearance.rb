class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :guest_id, uniqueness: { case_sensitive: false, scope: :episode_id, message: "A guest can only appear once in an episode, unless they know shadow clone jutsu!" }
  # I can't fully understand the :scope key being used here yet, but I saw it in the documentation and the code works.
  validates :rating, presence: { message: "Rating cannot be blank." }
  # I used number_field since the start of the project, so I didn't have to validate the number range, 
  # - but rating starts out blank and it was possible to create an appearance without rating being filled.
  # Therefore I added the validation on line 6.
end

# 5. Appearance Rating Validation
# The rating on an Appearance should be between 1 and 5 (inclusive - 1 and 5 are okay).

# Add a validation to ensure that the rating is between 1 and 5.
# Add handling for this error to the Appearance create action.
# The validation error should be shown on the Appearance creation form when a user attempts to save an appearance with an invalid rating.
