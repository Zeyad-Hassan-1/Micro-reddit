class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :mail
      t.string :password
      t.timestamps
    end
  end
end
