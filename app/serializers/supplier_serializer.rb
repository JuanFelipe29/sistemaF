class SupplierSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :cif
end
