class CreateBlogposts < ActiveRecord::Migration[5.0]
  def change
    create_table :blogposts do |t|
      t.text :title
      t.text :read
      t.text :content
      t.integer :bloggenre_id

      t.timestamps
    end
  end
end
