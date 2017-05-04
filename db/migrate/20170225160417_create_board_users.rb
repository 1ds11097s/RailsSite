class CreateBoardUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :board_users do |t|
      t.text :nickname
      t.integer :account_id
      t.text :memo

      t.timestamps
    end
  end
end
