class SchoolClassesController < ApplicationController
    def new
        @schoolClass = SchoolClass.new
    end

    def create
        @schoolClass = SchoolClass.create(params_parse(:title, :room_number))
        redirect_to school_class_path(@schoolClass)
    end

    def index
        @school_classes = SchoolClass.all
    end

    def show
        @class = schoolClass
    end

    def edit
        @schoolClass = schoolClass
    end

    def update
        @class = schoolClass
        @class.update(params_parse(:title, :room_number))
        redirect_to school_class_path(@class)
    end

    private 
    def schoolClass
        SchoolClass.find(params[:id])
    end
    def params_parse(*args)
        params.require(:school_class).permit(*args)
    end
end
