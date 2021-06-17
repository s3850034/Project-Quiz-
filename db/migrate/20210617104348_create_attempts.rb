class CreateAttempts < ActiveRecord::Migration[5.1]
  def change
    create_table :attempts do |t|
      t.integer :user_id
      t.integer :result
      t.integer :questions
      t.timestamps
    end
  end
end
