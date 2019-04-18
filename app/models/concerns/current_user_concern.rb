module CurrentUserConcern
  extend ActiveSupport::Concern

   def current_user
    super || guest_user
  end 

  def guest_user
   guest = GuestUser.new
   guest.name = "Guest_User"
   guest.first_name = "guest"
   guest.last_name = "user"
   guest.email = "guest@exmample.com"
   guest  
  end
 end 





