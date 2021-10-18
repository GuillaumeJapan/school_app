class CreateJoinTableContactEmployee < ActiveRecord::Migration[6.1]
  def change
    create_join_table :contacts, :employees do |t|
      # t.index [:contact_id, :employee_id]
      # t.index [:employee_id, :contact_id]
    end
  end
end
