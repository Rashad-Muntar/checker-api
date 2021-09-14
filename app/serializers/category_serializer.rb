class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :progress, :user_id
  has_many :activties
end
