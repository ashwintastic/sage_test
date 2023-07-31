class User < ApplicationRecord
  has_many :user_preferences
  has_many :channels , through:   :user_preferences

end
