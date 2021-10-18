class CreateJoinTableContactStudent < ActiveRecord::Migration[6.1]
  def change
    create_join_table :contacts, :students do |t|
      # t.index [:contact_id, :student_id]
      # t.index [:student_id, :contact_id]
    end
  end
end
