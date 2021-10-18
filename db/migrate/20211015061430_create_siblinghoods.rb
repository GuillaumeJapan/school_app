class CreateSiblinghoods < ActiveRecord::Migration[6.1]
  def change
    create_table :siblinghoods do |t|

      t.timestamps
    end
  end
end
