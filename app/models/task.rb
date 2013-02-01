class Task < ActiveRecord::Base
  attr_accessible :completed, :task

  belongs_to :story

  validates :task, :presence => true
end
