class CreatePoolAccesses < ActiveRecord::Migration
  def change
    create_table :pool_accesses do |t|
      t.boolean :is_opening
      t.boolean :emergency
      t.datetime :timestamp
      t.integer :user_id
      t.integer :pool_id

      t.timestamps
    end
  end
end
