class RemoveAttributesFromGroup < ActiveRecord::Migration[5.1]
  def change
    remove_column :groups, :family, :string
    remove_column :groups, :friends, :string
    remove_column :groups, :actualize, :string
    remove_column :groups, :work, :string
    add_column :groups, :class, :string
  end
end
