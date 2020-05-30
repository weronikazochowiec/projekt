class ChangePostCategoriesToPostsCategories < ActiveRecord::Migration[6.0]

    def change
      rename_table :post_categories, :posts_categories
    end

end
