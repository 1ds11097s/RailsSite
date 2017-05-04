class CreateMycontacts < ActiveRecord::Migration[5.0]
  def change
    create_table :mycontacts do |t|
      t.text :name
      t.integer :age
      t.boolean :nationality
      t.text :mail

      t.timestamps
    end
  end
end
