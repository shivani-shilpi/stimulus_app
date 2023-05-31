class PostsController < ApplicationController

  def create
    @student = Student.find(params[:student_id])
    @post = @student.posts.create(params_post)
    if @post.save 
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def destroy
    @student = Student.find(params[:student_id])
    @post = @student.posts.find(params[:id])
    if @post.destroy
      redirect_to student_path(@student)
    end
  end

  private 
  def params_post
     params.require(:post).permit(:title, :content, images: [])
  end
end
