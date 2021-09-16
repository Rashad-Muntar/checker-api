class ActivitySerializer
  include FastJsonapi::ObjectSerializer
  attributes :hour, :minute, :second, :title, :complete, :user_id, :category_id
end
