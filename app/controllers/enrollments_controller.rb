class EnrollmentsController < ApplicationController

    def new
        @enrollment = Enrollment.new
        render :new 
    end

    def create
        enrollment_params = params.require(:enrollment).permit(:student_id, :course_id)
        @enrollment = Enrollment.create(enrollment_params)
        redirect_to student_path(@enrollment.student_id)
    end 

    def destroy
        @enrollment = @Enrollment.find(params[:id])
        @enrollment.destroy
    end 

end
