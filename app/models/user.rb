class User < ApplicationRecord
  has_many :user_lessons
  has_many :lessons, through: :user_lessons
end
