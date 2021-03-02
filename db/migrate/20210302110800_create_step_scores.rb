class CreateStepScores < ActiveRecord::Migration[6.0]
  def change
    create_table :step_scores do |t|
      t.datetime :completed_at
      t.references :assignment, null: false, foreign_key: true
      t.references :step, null: false, foreign_key: true

      t.timestamps
    end
  end
end
