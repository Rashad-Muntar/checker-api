class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :title
      t.boolean :complete, default: false
      t.integer :hour, default: 0
      t.integer :minute, default: 0
      t.integer :second, default: 0
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
