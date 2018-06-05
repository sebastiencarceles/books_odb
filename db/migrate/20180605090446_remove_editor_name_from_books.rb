class RemoveEditorNameFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :editor_name, :string
  end
end
