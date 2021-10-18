class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :last_name
      t.string :first_name
      t.date :birth_date
      t.string :contract_type
      t.string :position
      t.string :visa_status
      t.date :visa_expiration

      t.timestamps
    end
  end
end
