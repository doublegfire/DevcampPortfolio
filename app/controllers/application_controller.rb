class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
end
  

     #Implementing the null object pattern ruby
  # super-what super does- it tells the system dont change anything I simply want the same behavior as in the method we are over riding. So, when you call super-everything to the right or the || it will be ignore.

  # So super make it where anyone can use the site not just known users.

  #then on the appl.html.erb
   # and added the .is_a?(User) to will remove the logout link in the page.



