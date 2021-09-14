class ActivitySerializer
  include FastJsonapi::ObjectSerializer
  attributes :timer, :title, :complete, :user_id, :category_id
end
