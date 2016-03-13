class PagesController < ApplicationController
	skip_before_action :authorize
  def home
    #byebug

    if params[:name].present? & params[:email].present? & params[:comment].present?
      Newsletter.weekly(params[:name] , params[:email] , params[:comment] ).deliver;
      flash[:notice] = "Send successfully!"

    end
   
    
   

  end
  def tc
   # Newsletter.weekly("soumitcse@zelo.in","sdfsdf" ).deliver;
  	 @student_list = StudentDetail.all
  end
  def viewtc
  	# byebug
  	 @student_list = StudentDetail.find(params[:id]) 
  end

 
  
end
