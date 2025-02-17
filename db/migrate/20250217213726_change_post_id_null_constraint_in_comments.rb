class ChangePostIdNullConstraintInComments < ActiveRecord::Migration[8.0]
  def change
    change_column_null :comments, :post_id, false
  end
end
