class RemoveTimeFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :time, :time
  end
end
