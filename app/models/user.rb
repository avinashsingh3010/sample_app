class User < ApplicationRecord
	
    validates :name, :presence => true

	validates :email, :presence => true,
					  :uniqueness => true    
  
	 def user_params
      params.require(:user).permit(:name, :email)
      
    end
    
end
