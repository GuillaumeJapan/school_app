class CreateHistorics < ActiveRecord::Migration[6.1]
  def change
    create_table :historics do |t|
      t.references :student, null: false, foreign_key: true
      t.string :school_name
      t.string :group_name
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
