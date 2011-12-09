class CreateTowers < ActiveRecord::Migration
  def change
    create_table :towers do |t|
      t.string :name
      t.integer :x
      t.integer :y
      t.integer :user_id
      t.integer :points
      t.string :position
      t.string :space1
      t.string :space2
      t.string :space3
      t.string :space4
      t.string :space5
      t.string :down1
      t.string :down2
      t.string :down3
      t.string :wall

      t.timestamps
    end
  end
end
