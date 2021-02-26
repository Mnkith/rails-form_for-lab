class SchoolClassesController < ApplicationController
  def index
	end

	def show
    @school_class = SchoolClass.find params[:id]
	end

	def new
    @school_class = SchoolClass.new
	end

	def create
    sc = SchoolClass.create params.require(:school_class).permit(:title, :room_number)
    redirect_to school_class_path(sc)
	end

	def edit
    @school_class = SchoolClass.find params[:id]
	end

	def update
    sc = SchoolClass.update params.require(:school_class).permit(:title, :room_number)
    redirect_to school_class_path(sc)
	end
end
