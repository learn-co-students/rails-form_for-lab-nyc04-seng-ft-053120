class SchoolClassesController < ApplicationController

    def show 
        #find the school class 
        @school_class = SchoolClass.find(params[:id])
    end

    def new 
        #we need to pass a school_class instance/object
        @school_class = SchoolClass.new 
    end

    def create
        #create a school class using helper method school_class_params
        @school_class = SchoolClass.create(school_class_params)
        #After submitting, the user should be redirected to the new school classes' show page
        redirect_to school_class_path(@school_class)
    end

    def edit
        #find the student to edit
        @school_class = SchoolClass.find(params[:id])
    end
    
    def update
        #finde the school_class
       @school_class = SchoolClass.find(params[:id])
       #update the school_class
       @school_class.update(school_class_params)
       #redirect to the updated school_class
       redirect_to school_class_path(@school_class)
    end

    private #helper method
    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end
end