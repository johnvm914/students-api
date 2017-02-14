class Api::V2::StudentsController < ApplicationController

  def index
    @students = Student.all
    render "index.json.jbuilder"
  end

  def show
    @student = Student.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name], age: params[:age], school: params[:school])
    render "show.json.jbuilder"
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.assign_attributes(first_name: params[:first_name], last_name: params[:last_name], age: params[:age], school: params[:school])
    @student.save
    render "show.json.jbuilder"
  end

  def destroy
    student = Student.find_by(id: params[:id])
    student.destroy
    redirect_to "/students.json"
  end

end