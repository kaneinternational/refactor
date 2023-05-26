class User < ApplicationRecord
  has_many :posts

  def has_confirmed_email?
    email_confirmed_at.present?
  end
end
