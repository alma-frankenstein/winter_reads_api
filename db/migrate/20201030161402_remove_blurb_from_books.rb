class RemoveBlurbFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :blurb, :string
  end
end
