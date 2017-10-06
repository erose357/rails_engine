class RevenueSerializer < ActiveModel::Serializer
  attributes :revenue

  def revenue
    revenue_as_float = object/100.to_f
    revenue_as_float.to_s
  end
end
