class Answer < ActiveRecord::Base
  belongs_to :job
  belongs_to :question
  
end
