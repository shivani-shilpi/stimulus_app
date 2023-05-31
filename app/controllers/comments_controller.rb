class CommentsController < ApplicationController

    def show
       @project = Project.find(params[:project_id])
       @comment = @project.comments.find(params[:id])
    end

    def create
        @project = Project.find(params[:project_id])
        @comment = @project.comments.build(comment_params)
        if @comment.save 
            redirect_to @project
        else 
            render partial: 'comments/form', locals: { comment: @comment }, status: :unprocessable_entity
        end
    end

    private 
    def comment_params
        params.require(:comment).permit(:content, :project_id)
    end
end
