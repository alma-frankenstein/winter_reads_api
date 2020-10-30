class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.column :blurb, :string
      t.column :author, :string
      t.column :price, :integer
    end
  end
end
