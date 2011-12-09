class CreateEscapetunnels < ActiveRecord::Migration
  def change
    create_table :escapetunnels do |t|
      t.integer :rate

      t.timestamps
    end
  end
end
