class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.integer :number
      t.string :neighborhood
      t.string :complement
      t.string :city
      t.string :state
      t.string :country
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
