class AddSlugToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :slug, :string
    add_index :books, :slug
  end
end
