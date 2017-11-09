class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :item_type
      t.integer :item_id
      t.integer :status

      t.timestamps
    end
  end
end
