class AddAncestryToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :ancestry, :string
  end
end
