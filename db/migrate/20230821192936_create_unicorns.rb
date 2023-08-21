class CreateUnicorns < ActiveRecord::Migration[7.0]
  def change
    create_table :unicorns do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :color
      t.float :price
      t.string :type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
