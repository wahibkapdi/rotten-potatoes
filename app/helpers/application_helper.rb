module ApplicationHelper
    def sort_button(column, direction, title = nil)
        title ||= column.titleize
        classes = "inactive"
        if session[:sort] == column && session[:direction] == direction
            classes = "active"
        end
        link_to title, { sort: column, direction: direction }, class: classes
    end
end
