module ApplicationHelper
  def body_page_name
    @body_page_name ||= [controller_name.camelcase, action_name.camelcase].join
  end
end
