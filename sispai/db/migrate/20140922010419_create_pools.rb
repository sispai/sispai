class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.string :address
      t.integer :owner

      t.timestamps
    end
  end
end
