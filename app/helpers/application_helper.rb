module ApplicationHelper
  def login_helper
  if current_user.is_a?(User)  
 link_to "logout" , destroy_user_session_path , method: :delete 
  else 
    (link_to "sign" , new_user_registration_path) +
    "<br>" .html_safe +
    (link_to "login" ,  new_user_session_path)  
  end 
 end

   def source_helper(layout_name)
    if session[:source]
      greeting =  "Thanks for visting me from #{session[:source]} and you are on the #{layout_name} layout "
      content_tag(:p, greeting,class: "source-greeting")
    end
   end

   def copyright_generator
   DarnelViewTool::Renderer.copyright 'Guinel Gue', 'All right reserved'
   end     
 end


# added the plus will make them appair on one line
# .html safe let the browers know its safe.

# def source_helper is a stander ruby method so you pass arugments (layout_name) to each layout page.
