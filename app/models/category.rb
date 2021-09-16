class Category < ApplicationRecord
  belongs_to :user
  has_many :activities, dependent: :destroy
  has_many :periods, dependent: :destroy
end
