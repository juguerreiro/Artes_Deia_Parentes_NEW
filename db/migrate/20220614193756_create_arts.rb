class CreateArts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.boolean :is_available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
