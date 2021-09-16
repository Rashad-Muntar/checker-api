class User < ApplicationRecord
    has_many :categories, dependent: :destroy
    has_many :periods, dependent: :destroy
    validates :username, presence: true
end
