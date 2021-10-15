class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.references :addressable, polymorphic: true, null: false
      t.string :label
      t.string :country
      t.string :zip_code
      t.string :prefecture
      t.string :city
      t.string :addr1
      t.text :addr2

      t.timestamps
    end
  end
end
