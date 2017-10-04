module ApplicationHelper

  def format_start_hour (datetime)
    I18n.l datetime, format: :long unless datetime.blank?
  end

  def get_time_in_seconds(finish_time, start_time)
    finish_time - start_time
  end

  def total_hours_charged(finished_tasks)
    total_seconds = 0
    finished_tasks.map do |task|
      total_seconds += get_time_in_seconds(task.finished_at, task.created_at)
    end

    ((total_seconds/60)/60).round(2)
  end
end
