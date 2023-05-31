class TodosController < ApplicationController
  before_action :set_todo, only: %i[ show edit update destroy update_position ] 

  def index
    @todos = Todo.order(:position)
  end

  def show
  end

  def new
    @todo = Todo.new
  end

  def edit
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to @todo
    else
      render :new
    end
  end

  def update
    if @todo.update(todo_params)
      redirect_to @todo
    else 
      render :edit
    end
  end

  def destroy
    if @todo.destroy
      redirect_to @todo
    end
  end

  def update_position
      @todo.insert_at(todo_params[:position].to_i)
      head :ok
  end

  private 
  def set_todo
     @todo = Todo.find(params[:id])
  end

  def todo_params
     params.require(:todo).permit(:title, :description, :position)
  end 
end
