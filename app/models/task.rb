class Task < ActiveRecord::Base
  attr_accessible :completed, :task

  belongs_to :story

  validates :task, :presence => true

  def complete
    self.update_attribute(:completed, true)
  end

  def uncomplete
    self.update_attribute(:completed, false)
  end
end
