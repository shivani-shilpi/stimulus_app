class StudentsController < ApplicationController
    before_action :set_student, only: %i[show edit update destroy]

    def index
      @students = Student.all
    end

    def show
    end

    def edit
      @country = CountriesSelect.new.countries
    end

    def new
      @student = Student.new
      @country = CountriesSelect.new.countries
    end

    def create
      @student = Student.new(params_student)
      if @student.save 
        redirect_to student_url(@student), notice: "User was successfully created."
      else 
        render :new
      end
    end

    def destroy
      if @student.destroy
        redirect_to @student
      end
    end

    def update
      if @student.update(params_student)
        redirect_to @student, notice: "User was successfully updated."
      else
        :edit
      end
    end
    
    def fetch_country_states
    end

    private 

    def set_student
      @student = Student.find(params[:id])
    end

    def params_student
      params.require(:student).permit(:name, :email, :city, :country, :contact)
    end 
end
