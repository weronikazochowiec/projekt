class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :user_blog, null: false, foreign_key: true
      t.string :title
      t.text :content
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
