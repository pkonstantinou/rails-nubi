class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.string :title
      t.string :description
      t.string :content_type
      t.references :track, null: false, foreign_key: true

      t.timestamps
    end
  end
end
