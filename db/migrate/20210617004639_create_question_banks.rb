class CreateQuestionBanks < ActiveRecord::Migration[5.1]
  def change
    create_table :question_banks do |t|
      t.string :id
      t.string :question
      t.string :description
    end
  end
end
