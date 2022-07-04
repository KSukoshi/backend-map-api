class AddAddressAssociationToClinics < ActiveRecord::Migration[6.1]
  def change
    add_reference :clinics, :address, foreign_key: true
    add_reference :addresses, :clinic, foreign_key: true
  end
end
