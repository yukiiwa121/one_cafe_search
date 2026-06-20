class AddBodyAndUserToComments < ActiveRecord::Migration[7.2]
  def change
    add_column :comments, :body, :text
    add_reference :comments, :user, null: false, foreign_key: true
  end
end
