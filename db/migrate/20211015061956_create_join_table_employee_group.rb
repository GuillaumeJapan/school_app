class CreateJoinTableEmployeeGroup < ActiveRecord::Migration[6.1]
  def change
    create_join_table :employees, :groups do |t|
      # t.index [:employee_id, :group_id]
      # t.index [:group_id, :employee_id]
    end
  end
end
