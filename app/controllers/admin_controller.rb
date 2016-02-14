class AdminController < ApplicationController
  def show
  	# @employee_details_all = NewEmployeeDetail.all
    @student_details = NewEmployeeDetail.find(params[:id])
  end

  def create
	 
 byebug
@estudent_details = NewStudentDetail.new(new_student_details_params)
if params[:image_id].present?
  preloaded = Cloudinary::PreloadedFile.new(params[:image_id])         
  raise "Invalid upload signature" if !preloaded.valid?
  @student_details.image_id = preloaded.identifier
	end
 
 

	

 #@employee_details.image_path = result["public_id"]
  @student_details.save
  redirect_to @student_details
  end

  def index
  	redirect_to student_details_url
  end


  private
  def new_student_details_params
    params.require(:new_student_details).permit(:regno , :name , :image_id)
  end

end
