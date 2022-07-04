class CreateClinics < ActiveRecord::Migration[6.1]
  def change
    create_table :clinics do |t|
      t.string :nome
      t.integer :cnpj

      t.timestamps
    end
  end
end
