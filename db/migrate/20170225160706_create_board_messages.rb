class CreateBoardMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :board_messages do |t|
      t.text :content
      t.integer :board_user_id

      t.timestamps
    end
  end
end
