class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :season_name
      t.boolean :active,default: false

      t.timestamps
    end
  end
end
