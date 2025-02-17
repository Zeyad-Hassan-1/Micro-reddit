class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.timestamps

      t.references :post, index: true, null: true, foreign_key: true
    end
  end
end
