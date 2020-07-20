class StudentsController < ApplicationController
    def new
        @student = Student.new
    end
    def create
        @student = Student.create(params_parse(:first_name, :last_name))
        redirect_to student_path(@student)
    end
    def index
        @students = Student.all
    end
    def show
        @student = student_finder
    end
    def edit
        @student = student_finder
    end
    def update
        @student = student_finder
        @student.update(params_parse(:first_name,:last_name))
        redirect_to student_path(@student)
    end

    private
    def student_finder
        Student.find(params[:id])
    end

    def params_parse(*args)
        params.require(:student).permit(*args)
    end

end