class PieceNameSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :family
end
