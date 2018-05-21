class AddEditorNameToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :editor_name, :string
  end
end
