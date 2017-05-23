class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :family
      t.string :friends
      t.string :actualize
      t.string :work

      t.timestamps
    end
  end
end
