module UsersHelper
  def flash_error field
    return unless flash[:errors] && flash[:errors][field]

    error_message = flash[:errors][field].uniq.join(' and ')
    content_tag(:small, error_message, class: 'text-danger')
  end
end
