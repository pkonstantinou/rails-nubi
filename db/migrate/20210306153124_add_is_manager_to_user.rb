class AddIsManagerToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :is_manager, :boolean, default: false
  end
end
