class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.references :school, null: false, foreign_key: true
      t.references :group, foreign_key: true
      t.references :siblinghood, foreign_key: true
      t.string :last_name
      t.string :first_name
      t.date :birth_date
      t.date :inscription_date
      t.text :note

      t.timestamps
    end
  end
end
