class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.string :title
      t.text :content
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
