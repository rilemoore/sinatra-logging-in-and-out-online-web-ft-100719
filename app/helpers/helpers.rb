class Helpers
  def self.current_user(session)
    @user = User.where(user_id: session[:user_id]) 
  end
  
  def self.is_logged_in?(session)
    if(session[:user_id])
      true
    else
      false
    end
    
  end
end