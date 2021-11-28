class StudentsController < ApplicationController
  #追加箇所
  before_action :authenticate_user!
  #ここまで
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.new(student_params)
     #追加箇所
     student.user_id = current_user.id
     #ここまで
    if student.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    if student.update(student_params)
      redirect_to :action => "show", :id => student.id
    else
      redirect_to :action => "new"
    end
  end

  # 追加場所ここから
  def destroy
    student = Student.find(params[:id])
    student.destroy
    redirect_to action: :index
  end
  # ここまで

  private
  def student_params
    params.require(:student).permit(:name, :profile, :mentor, :grade)
  end

end