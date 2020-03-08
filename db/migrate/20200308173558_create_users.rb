class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :base_commands, array:true, default: []
      t.timestamps
    end
  end
end
