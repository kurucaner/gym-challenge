class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :total_charges

  def total_charges
    self.object.memberships.sum(:charge)
  end
end
