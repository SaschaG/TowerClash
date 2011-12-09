class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|
      t.integer :speed

      t.timestamps
    end
  end
end
