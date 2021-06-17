class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :question_bank_id
      t.string :answer
      t.boolean :user
      t.boolean :correct
      t.timestamps
    end
  end
end
