class Task < ApplicationRecord
  has_one :user
  validates :name, :user_id, presence: true
  paginates_per 3

  def task_total_time
    time_in_seconds = (self.finished_at - self.created_at)
    mm, ss = time_in_seconds.divmod(60)
    hh, mm = mm.divmod(60)
    dd, hh = hh.divmod(24)

    "%d days, %d hours, %d minutes and %d seconds" % [dd, hh, mm, ss]
  end

end
