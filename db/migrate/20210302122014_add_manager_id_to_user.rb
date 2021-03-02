class AddManagerIdToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :user, null: true, foreign_key: true
  end
end
