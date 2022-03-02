module TasksHelper
    def get_due_date_in_days(task)
        days = (task.date - Date.today).to_i

        if days == -1
            return "Yesterday"
        elsif days < -1
            return "#{days.abs()} days ago"
        elsif days == 0
            return "Today"
        elsif days == 1
            return "Tomorrow"
        else
            return "in #{days} days"
        end
    end
end
