class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :last_name
      t.string :first_name
      t.string :relationship
      t.string :phone
      t.string :workplace_phone
      t.string :email
      t.text :note

      t.timestamps
    end
  end
end
