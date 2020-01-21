class CreateListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :list_items do |t|
      t.references :list, null: false, foreign_key: true
      t.references :content, null: false, foreign_key: true
      t.string :review
      t.integer :review_score

      t.timestamps
    end
  end
end
