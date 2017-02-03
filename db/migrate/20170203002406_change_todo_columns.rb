class ChangeTodoColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :todos, :category
    add_column :todos, :category, :string, null:false
  end
end
