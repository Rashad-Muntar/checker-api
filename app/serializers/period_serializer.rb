class PeriodSerializer
  include FastJsonapi::ObjectSerializer
  attributes :hour, :minute, :second, :category_id
end
