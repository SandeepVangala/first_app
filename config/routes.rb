Rails.application.routes.draw do
	#get "index ", as: "blogs#index"
   	resources :blogs do
   	 collection do 
   	 	get "dashboard"
   	 end
   	 #member do 
   	 	#get "member_action"
   	 #end
   end

   root to: "blogs#index"
end
 