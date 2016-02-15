class PagesController < ApplicationController
	skip_before_action :authorize
  def home
  end
  def tc
  	 @student_details = StudentDetail.all
  end
  def viewtc

  end

  
end
