class StudentsController < ApplicationController
  def index
	end

	def show
    @student = Student.find params[:id]
	end

	def new
    @student = Student.new
	end

	def create
    s = Student.create params.require(:student).permit(:first_name, :last_name)
    redirect_to student_path(s)
	end

	def edit
    @student = Student.find params[:id]
	end

	def update
    s = Student.update params.require(:student).permit(:first_name, :last_name)
    redirect_to student_path(s)
	end

end
