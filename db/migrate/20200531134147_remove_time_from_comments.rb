class RemoveTimeFromComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :time, :time
  end
end
