class TodolistController < ApplicationController
  def index
    @todos = Todolist.where(done: false)
  end

  def show
    @todo = Todolist.find(params[:id])
  end

  def new
    @todo = Todolist.new
  end

  def edit
    @todo = Todolist.find(params[:id])
  end

  def create
    @todo = Todolist.create(todo_params)
  end

  def update
    @todo = Todolist.find(params[:id])
    if @todo.update(todo_params)
      redirect_to @todo, notice: 'Todo was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @todo = Todolist.find(params[:id])
    @todo.destroy
      redirect_to index, notice: 'Todo was successfully destroyed.'
  end
  private
    def todo_params
      params.require(:todolist).permit(:title, :description, :done)
    end
end
