class CreateGroupies < ActiveRecord::Migration[5.1]
  def change
    create_table :groupies do |t|
      t.integer :class

      t.timestamps
    end
  end
end
