class CreateUserStructures < ActiveRecord::Migration[5.2]
  def change
    create_table :user_structures do |t|
      t.references :user, foreign_key: true
      t.references :structure, foreign_key: true
      t.timestamps
    end
  end
end
