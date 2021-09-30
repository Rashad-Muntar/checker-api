class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :user_id, :hour, :minute, :second
  has_many :activities
end
