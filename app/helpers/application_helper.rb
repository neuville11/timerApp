module ApplicationHelper

  def format_start_hour (datetime)
    I18n.l datetime, format: :long unless datetime.blank?
  end
end
