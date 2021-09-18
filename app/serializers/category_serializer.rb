class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :user_id
  has_many :activities
end
