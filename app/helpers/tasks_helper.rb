module TasksHelper
  def status_badge(status)
    color = case status
            when "pending" then "bg-yellow-100 text-yellow-800"
            when "in_progress" then "bg-blue-100 text-blue-800"
            when "done" then "bg-green-100 text-green-800"
            end

    content_tag(:span, status.humanize, class: "px-2 py-1 rounded #{color}")
  end
end

