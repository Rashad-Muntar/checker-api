class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :hour, :minute, :user_id
  has_many :activities
end
