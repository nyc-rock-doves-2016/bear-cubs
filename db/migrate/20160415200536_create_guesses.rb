class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.references :round
      t.references :card
      t.string :user_guess
      t.boolean :is_correct?

      t.timestamps null: false
    end
  end
end
