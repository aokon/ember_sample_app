class ContactSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :full_name, :city, :country

  self.root = false
  
  def full_name
    [object.first_name, object.last_name].join(' ')
  end
end
