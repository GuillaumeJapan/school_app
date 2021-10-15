class CreateJoinTableAllergyStudent < ActiveRecord::Migration[6.1]
  def change
    create_join_table :allergies, :students do |t|
      # t.index [:allergy_id, :student_id]
      # t.index [:student_id, :allergy_id]
    end
  end
end
