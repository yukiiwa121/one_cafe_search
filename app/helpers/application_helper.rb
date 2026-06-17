module ApplicationHelper
    def page_title(title = '')
     base_title = 'one_cafe_search'
     title.present? ? "#{title} | #{base_title}" : base_title
    end
end
