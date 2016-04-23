class TodosController < ApplicationController
  def index
    render json: user.todos
  end

  def create
    todo = user.todos.create! title: params[:title]
    render json: todo
  end

  def update
    todo = user.todos.find params[:id]
    todo.title = params[:title] if params[:title]
    todo.complete! if params[:complete]
    todo.save!
    render json: todo
  end

  private

  def user
    @_user ||= User.where(name: params[:username]).first_or_create!
  end
end
