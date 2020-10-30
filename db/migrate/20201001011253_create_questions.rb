class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :body
      t.integer :trump_votes
      t.integer :biden_votes
      t.references :candidate_1, null: false
      t.references :candidate_2, null: false

      t.timestamps
    end
  end
end
