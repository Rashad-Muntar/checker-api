class CreateActivties < ActiveRecord::Migration[6.1]
  def change
    create_table :activties do |t|
      t.string :title
      t.boolean :complete, default: false
      t.time :timer
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
