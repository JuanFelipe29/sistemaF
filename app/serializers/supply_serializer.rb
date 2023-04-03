class SupplySerializer < ActiveModel::Serializer
  attributes :id, :code, :name, :quantity, :unit_price, :total_value
  has_one :supplier
end
