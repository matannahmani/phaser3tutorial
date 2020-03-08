class CreateStructures < ActiveRecord::Migration[5.2]
  def change
    create_table :structures do |t|
      t.integer :amount
      t.integer :placed

      t.timestamps
    end
  end
end
