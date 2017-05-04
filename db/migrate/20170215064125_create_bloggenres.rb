class CreateBloggenres < ActiveRecord::Migration[5.0]
  def change
    create_table :bloggenres do |t|
      t.text :name
      t.text :memo

      t.timestamps
    end
  end
end
