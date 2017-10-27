class Task < ApplicationRecord
  default_value_for :status, 0
  enum status: [:todo, :completed, :archived]

  validates_presence_of :status, :description

  def is_completed?
    status.to_sym == :completed
  end

  def is_archived?
    status.to_sym == :archived
  end

  def is_todo?
    status.to_sym == :todo
  end

  def toggle
    if is_completed?
      update_attributes(status: :todo)
      return true
    end

    if is_todo?
      update_attributes(status: :completed)
      return true
    end

    return false
  end
end
