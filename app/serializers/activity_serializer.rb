class ActivitySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :complete, :user_id, :category_id
end
