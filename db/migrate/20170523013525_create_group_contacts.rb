class CreateGroupContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :group_contacts do |t|
      t.integer :category_id

      t.timestamps
    end
  end
end
