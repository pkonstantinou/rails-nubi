class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.boolean :is_global, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
