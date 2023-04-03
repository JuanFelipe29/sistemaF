class PieceSerializer < ActiveModel::Serializer
  attributes :id, :lot, :weight, :start_date_maturation, :end_date_of_maturation, :matured, :available
  has_one :channel
  has_one :piece_name
  has_one :user
end
