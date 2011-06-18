class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
       t.references :job
      t.text :question1
      t.text :question2
      t.text :question3
      t.text :question4
      t.text :question5

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
