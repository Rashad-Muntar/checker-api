class User < ApplicationRecord
    has_many :categories, dependent: :destroy
    validates :username, presence: true
end
