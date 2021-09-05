module ApplicationHelper
  def login_logout
    content = ''
    user_signed_in? ? content =  link_to("Logout", destroy_user_session_path, method: :delete, data: {confirm: 'Confirm Logout'}) : content << link_to("Login", new_user_session_path, class: "nav-link")
    content.html_safe
  end
  
  def signup
     link_to("Sign-Up", new_user_registration_path, class: "nav-link") unless user_signed_in?      
  end

  def my_offers
    link_to('My offers', user_path, class: nav-link) if user_signed_in? 
  end

  def display_notice
    content_tag :p, notice, class: 'notice', id:'notice' if notice
  end

  def display_alert
    content_tag :p, alert, class: 'alert', id: 'alert' if alert
  end
end
