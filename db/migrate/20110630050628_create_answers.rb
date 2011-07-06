class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.references :question
      t.text :answer1
      t.text :answer2
      t.text :answer3
      t.text :answer4
      t.text :answer5
      t.text :answer6
      t.text :answer7
      t.text :answer8
      t.text :answer9
      t.text :answer10
      
      t.timestamps
    end
  end

  def self.down
    drop_table :answers
  end
end
