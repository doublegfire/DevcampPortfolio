module ApplicationHelper
  def login_helper style = ""
  if current_user.is_a?(GuestUser)  
 (link_to "Register" , new_user_registration_path, class: style) +
    " " .html_safe +
    (link_to "Login" ,  new_user_session_path,class: style) 
  else 
   link_to "logout" , destroy_user_session_path, method: :delete, class: style  
  end 
 end

   def source_helper(layout_name)
    if session[:source]
      greeting =  "Thanks for visting me from #{session[:source]} and you are on the #{layout_name} layout "
      content_tag(:p, greeting,class: "source-greeting")
    end
   end

   def copyright_generator
  GueViewTool::Renderer.copyright 'Guinel Gue', 'All right reserved'
   end     
 end

# i had an issue when i added style. i was getting a argument error'' wrong number of arugument give' so i added the ="". its an default arugument the can fix it 
# added the plus will make them appair on one line
# .html safe let the browers know its safe.

# def source_helper is a stander ruby method so you pass arugments (layout_name) to each layout page.
