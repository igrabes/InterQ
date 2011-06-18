class Job < ActiveRecord::Base
  has_many :questions
end
