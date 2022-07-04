class ChangeColumnsRequirements < ActiveRecord::Migration[6.1]
  def change
    change_column :clinics, :nome, :string, null: false
    change_column :clinics, :cnpj, :string, null: false
    change_column :addresses, :street, :string, null: false
    change_column :addresses, :number, :string, null: false
    change_column :addresses, :neighborhood, :string, null: false
    change_column :addresses, :complement, :string, null: false
    change_column :addresses, :city, :string, null: false
    change_column :addresses, :state, :string, null: false
    change_column :addresses, :country, :string, null: false
    change_column :addresses, :latitude, :string, null: false
    change_column :addresses, :longitude, :string, null: false
  end
end
