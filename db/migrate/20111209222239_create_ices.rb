class CreateIces < ActiveRecord::Migration
  def change
    create_table :ices do |t|
      t.integer :dmg
      t.integer :rate
      t.integer :boni

      t.timestamps
    end
  end
end
