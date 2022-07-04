class ChangeCnpjToString < ActiveRecord::Migration[6.1]
  def change
    change_column :clinics, :cnpj, :string
  end
end
