class Post < ApplicationRecord
  belongs_to :user

  def display_on_featured_page!
    if created_at < 10.days.ago && user.has_confirmed_email?
      update!(featured: true)
    end
  end
end
