class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :youth_flag,default: false
      t.string :email
      t.string :phone
      t.boolean :active_flag,default: false
      t.boolean :delete_flag,default: false

      t.timestamps
    end
  end
end
