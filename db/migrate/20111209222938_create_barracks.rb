class CreateBarracks < ActiveRecord::Migration
  def change
    create_table :barracks do |t|
      t.integer :rate

      t.timestamps
    end
  end
end
