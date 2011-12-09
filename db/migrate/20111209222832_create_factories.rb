class CreateFactories < ActiveRecord::Migration
  def change
    create_table :factories do |t|
      t.integer :rate

      t.timestamps
    end
  end
end
