class CreateQuestionBanks < ActiveRecord::Migration[5.1]
  def change
    create_table :question_banks do |t|
      t.integer :quiz_id
      t.integer :json_id
      t.string :question
      t.string :category
      t.string :difficulty
      t.boolean :done
      t.boolean :multiple_correct_answers
    end
  end
end
