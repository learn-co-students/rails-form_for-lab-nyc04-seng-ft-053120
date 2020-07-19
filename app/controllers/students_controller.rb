class StudentsController < ApplicationController

    def show 
        #find the student 
        @student = Student.find(params[:id])
    end

    def new 
        #we need to pass a student instance/object
        @student = Student.new 
    end

    def create
        #create a student using helper method student_params
        @student = Student.create(student_params)
        #After submitting, the user should be redirected to the new student’s show page
        redirect_to student_path(@student)
    end
    
    def edit 
        #find the student to edit, with this rails knows we're editing and not creating a student
        @student = Student.find(params[:id])
    end

    def update #similar to create
        #find the student
        student = Student.find(params[:id])
        #actually edit the student
        student.update(student_params)
        #redirect to a updated student 
        redirect_to student_path(student.id)
        #redirect_to "/students/#{student.id}"
    end

    private #helper method
    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end
end