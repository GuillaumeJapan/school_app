class CreateJoinTableEmployeeSchool < ActiveRecord::Migration[6.1]
  def change
    create_join_table :employees, :schools do |t|
      # t.index [:employee_id, :school_id]
      # t.index [:school_id, :employee_id]
    end
  end
end
