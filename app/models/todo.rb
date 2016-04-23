class Todo < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true

  def complete?
    !completed_at.nil?
  end

  def complete!
    update! completed_at: Time.now
  end

  def as_json *_
    {
      id:         id,
      title:      title,
      created_at: created_at,
      complete:   complete?
    }
  end
end
