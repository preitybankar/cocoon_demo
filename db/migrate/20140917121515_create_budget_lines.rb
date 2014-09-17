class CreateBudgetLines < ActiveRecord::Migration
  def change
    create_table :budget_lines do |t|
      t.belongs_to :season, index: true
      t.string :budget_line_type
      t.string :budget_line_subtype
      t.integer :member_id
      t.string :budget_line_item_name
      t.float :budgeted_amount

      t.timestamps
    end
  end
end
