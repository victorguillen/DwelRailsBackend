class Api::TodosController < ApplicationController
  def index
    @todos = Todo.where(group_id: params[:group_id])
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      render 'api/todos/show'
    else
      render json: todo.errors.full_messages, status: 422
    end
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update(resolved: true)
      render "api/todos/show"
    else
      render json: @todo.errors.full_messages, status: 422
    end
  end

  def todo_params
    params.require(:todo).permit(:description, :body, :category, :group_id)
  end
end
