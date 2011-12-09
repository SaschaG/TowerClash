class CreateAmbushes < ActiveRecord::Migration
  def change
    create_table :ambushes do |t|

      t.timestamps
    end
  end
end
