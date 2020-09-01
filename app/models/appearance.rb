class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  default_scope { order(rating: :DESC) }
  # https://stackoverflow.com/questions/3393687/default-sort-order-for-a-rails-model

  validates :guest_id, uniqueness: { scope: :episode_id, message: "A guest can only appear once in an episode, unless they know shadow clone jutsu!" }
  # I can't fully understand the :scope key being used here yet, but I saw it in the rails validation documentation and the code works.
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

# 8. Advanced: Guest Show Page Appearance Ordering
# On the Guest show page, order the Episodes by the Appearance rating so that the highest rated shows first in the list.
