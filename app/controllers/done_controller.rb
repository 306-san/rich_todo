class DoneController < ApplicationController
  def index
    @todos = Todolist.where(done: true)
  end
end
