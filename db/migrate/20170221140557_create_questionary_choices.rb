class CreateQuestionaryChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :questionary_choices do |t|
      t.text :content
      t.integer :value
      t.integer :questionary_item_id

      t.timestamps
    end
  end
end
