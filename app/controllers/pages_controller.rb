class PagesController < ApplicationController
	skip_before_action :authorize
  def home
  end
  def tc
  	 @student_list = StudentDetail.all
  end
  def viewtc
  	# byebug
  	 @student_list = StudentDetail.find(params[:id]) 
  end

 
  
end
